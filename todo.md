# BombLab 终极生存指南 (Zero to Hero)

这份文档是你的**唯一行动纲领**。它整合了所有原始 README 的规则，并为零基础的你提供了详细的教程和模拟训练。阅读完本文，你将不再需要查阅其他零散文档。

---

## 第一部分：什么是 BombLab？(The Concept)

### 1. 什么是“二进制炸弹” (Binary Bomb)？
你拿到的 `bomb` 文件是一个**可执行程序**（就像 Windows 上的 `.exe`，只是这是 Linux 版）。
- **它没有源代码**：你看不通过 C 语言代码知道它在干什么。
- **它有逻辑**：它会读取你的输入（键盘打字），然后进行判断。
- **它的目标**：如果你的输入符合它的内部要求（密码正确），它就让你过关；如果不符合，它就调用一个叫 `explode_bomb` 的函数，打印 "BOOM!!!" 并扣分。

### 2. 你的任务 (The Mission)
你需要利用“逆向工程”工具，像拆弹专家一样，分析这个程序的内部结构，找出 **6 个阶段 (Phase)** 的正确输入字符串。

- **成功拆解 (Defused)**：输入正确字符串，程序打印 "Phase X defused. How about the next one?"，并进入下一关。
- **引爆炸弹 (Exploded)**：输入错误字符串，程序打印 "BOOM!!!"，炸弹爆炸，服务器记录一次扣分（通常扣 0.5 分）。

### 3. 核心工具箱 (The Toolkit)
要完成任务，你需要掌握以下概念和工具：

*   **汇编语言 (Assembly)**: 机器指令的文字版。C 语言是写给人看的，编译后变成 0101 机器码，汇编语言就是把 0101 翻译成人类勉强能看懂的指令（如 `mov`, `cmp`, `jmp`）。
*   **寄存器 (Registers)**: CPU 内部的小容器，用来暂存数据。
    *   `%rax`: 通常存放函数的**返回值**。
    *   `%rdi`, `%rsi`, `%rdx`: 通常存放传递给函数的**参数**（第1、2、3个参数）。
    *   `%rsp`: 栈指针，指向内存栈的顶部。
*   **GDB (GNU Debugger)**: 你的“透视眼”。它可以让程序停在任意一行指令，让你查看此时寄存器里是什么值，内存里存了什么。
*   **IDA / Objdump**: 你的“翻译机”。它们把看不懂的二进制文件转换成汇编代码或流程图。

---

## 第二部分：文件结构与准备工作 (Files & Prep)

### 1. 文件结构说明 (File Structure)
你的工作区包含以下关键文件和目录。其中 `bomblab/` 文件夹里的内容正是你从网站下载并解压得到的**专属炸弹包**。

- **`README.md`**: 项目的主说明文档，包含作业要求、评分标准和计分板链接。
- **`bomblab/`**: **核心任务目录** (你下载解压出来的东西都在这)
    - **`bomb`**: **这是主角**。一个编译好的二进制可执行文件。
        - *是什么？* 这就是那个“黑盒子”炸弹。
        - *怎么用？* **千万不要直接双击或用文本编辑器打开**（全是乱码）。你需要用 **GDB** 运行它进行调试，或者用 **Objdump/IDA** 对它进行反汇编分析。你的所有工作都是围绕它展开的。
    - **`bomb.c`**: **炸弹的“外壳”源代码**。
        - *是什么？* 它是炸弹程序的 C 语言主入口文件。
        - *怎么用？* 可以用文本编辑器打开阅读。它只包含了 `main` 函数，负责读取你的输入并调用核心关卡函数（如 `phase_1`）。**注意：真正的关卡逻辑（phase_1 等）并没有写在这里面**，而是被编译进了 `bomb` 文件里，所以你必须去分析 `bomb`。
    - **`README`**: **身份证明**。
        - *是什么？* 一个简单的文本文件。
        - *怎么用？* 打开它，里面写着 "This is bomb [学号]"。**务必核对**这里的学号是你自己的，否则你拆了半天是在帮别人做作业（或者服务器不认你的成绩）。
- **`nuclearlab/`**: 附加任务目录。
    - `nuclear`: 另一个需要逆向或运行的程序。
    - `README.txt`: 包含运行 `nuclear` 所需的学号和密码。
- **`materials/`**: 学习资料。
    - `ida_use.md`: 强大的逆向工具 IDA 的使用指南。
- **`report/`**: 报告目录。
    - `report.md`: **你需要填写的实验报告模板**。

### 2. 准备工作 (Preparation)

- [ ] **确认文件位置**: 确保你解压后的文件都在 `bomblab/` 目录下。你应该能看到 `bomb`, `bomb.c` 和 `README` 这三个文件。
- [ ] **确认环境**: 确保你在 Linux 环境下工作（本实验依赖 Linux 系统调用）。
- [ ] **确认炸弹ID**:
    - 打开 `bomblab/README`，确认 "This is bomb [学号]" 中的学号是否是你的。**这是最重要的一步！**
    - 打开 `nuclearlab/README.txt`，记录下你的学号和密码。
- [ ] **安装工具**:
    - **GDB**: 终端输入 `gdb --version` 检查。
    - **Objdump**: 终端输入 `objdump --version` 检查。

---

## 第三部分：模拟拆弹演练 (Simulation)

在处理真正的炸弹前，我们先看一个**模拟案例**，理解拆弹的思维过程。

### 1. 假设的 C 源代码 (你看不见这个)
假设炸弹的某一关逻辑如下：
```c
// 这是一个你看不见的函数
void phase_sim(char *input) {
    int x = atoi(input); // 将输入的字符串转为数字
    if (x != 12345) {    // 检查数字是否等于 12345
        explode_bomb();  // 不相等就爆炸
    }
    // 相等则安全返回
}
```

### 2. 你看到的汇编代码 (这是你面对的)
使用 `objdump` 或 GDB，你会看到类似这样的代码：

```asm
0x401000 <phase_sim>:
    sub    $0x8, %rsp           ; 调整栈（不用管）
    callq  0x402000 <atoi>      ; 调用 atoi 函数，把你的输入转成数字
                                ; 关键点：atoi 的返回值通常放在 %eax 寄存器中
    cmp    $0x3039, %eax        ; 【关键指令】比较 %eax 和 0x3039
    je     0x401020 <safe>      ; je = Jump if Equal (如果相等，就跳到 safe)
    callq  0x403000 <explode_bomb> ; 如果不相等，继续执行，调用爆炸函数！
0x401020 <safe>:
    add    $0x8, %rsp           ; 恢复栈
    retq                        ; 返回，过关
```

### 3. 拆解思路 (思维过程)
1.  **定位比较**: 我看到了 `cmp $0x3039, %eax`。这说明程序在拿我的输入（转换后的 `%eax`）和一个常数 `0x3039` 做比较。
2.  **理解跳转**: 下一行是 `je <safe>`。意思是“如果相等，就安全”。反之，如果不相等，就会往下走去执行 `explode_bomb`。
3.  **破解密码**: 为了不爆炸，我必须让 `%eax` 等于 `0x3039`。
4.  **进制转换**: `0x3039` 是十六进制。我打开计算器，将它转为十进制：
    *   $3 \times 16^3 + 0 \times 16^2 + 3 \times 16^1 + 9 \times 16^0 = 12288 + 0 + 48 + 9 = 12345$。
5.  **得出答案**: 这一关的密码就是 `12345`。

### 4. 使用 GDB 验证 (实战操作)
如果我不确定 `0x3039` 是什么，或者逻辑太复杂看不懂，我可以用 GDB **动态调试**：

1.  `gdb bomb` (启动调试)
2.  `break phase_sim` (在函数开始处打断点，让程序停下来)
3.  `run` (运行程序，输入随便一个数，比如 "111")
4.  程序停在 `phase_sim` 入口。
5.  `disas` (查看汇编代码，找到 `cmp` 那一行)
6.  `break *0x40100a` (在 `cmp` 指令的地址打断点)
7.  `c` (Continue，继续运行直到 `cmp` 指令)
8.  程序停在 `cmp` 之前。此时 `atoi` 已经执行完了。
9.  `info registers rax` (查看 `%rax` 的值，发现是 111)
10. 此时我看到了指令是 `cmp $0x3039, %eax`。
11. 我直接在 GDB 里算：`print 0x3039` -> 输出 `12345`。
12. **Bingo!** 答案就是 12345。

---

## 第四部分：正式任务流程 (Walkthrough)

### Step 1: 静态分析 (生成“地图”)
在开始运行前，先生成一份可读的汇编代码文件，方便随时查阅。
在终端运行：
```bash
cd bomblab
objdump -d bomb > bomb.asm
```
现在你可以用文本编辑器打开 `bomb.asm`，搜索 `phase_1`，看看第一关长什么样。

### Step 2: 动态调试 (开始拆弹)
这是你大部分时间要做的事。

1.  **启动 GDB**:
    ```bash
    gdb bomb
    ```
2.  **设置断点**: 防止炸弹真的爆炸，我们要在每一关的入口停下来。
    ```gdb
    (gdb) break phase_1
    ```
3.  **运行**:
    ```gdb
    (gdb) run
    ```
4.  **输入试探**: 程序会提示你输入，随便输点什么（反正有断点保护）。
5.  **单步跟踪**:
    - 使用 `disas` 看当前代码。
    - 使用 `ni` (next instruction) 一步步走。
    - **关键时刻**: 遇到 `cmp` (比较) 或 `test` (测试) 指令时，停下来！
    - **查看答案**: 使用 `info registers` 查看寄存器里的值，或者 `x/s $rdi` 查看内存里的字符串。
    - **推导**: 根据比较的值，反推你应该输入什么。

### 示例：如何解决 Phase 1 (Example Walkthrough)

假设 Phase 1 是一个简单的字符串比较关卡。

1.  **启动与断点**:
    ```bash
    gdb bomb
    (gdb) break phase_1
    (gdb) run
    ```
    程序提示输入，你输入 "Hello"。程序停在 `phase_1` 入口。

2.  **观察汇编**:
    ```gdb
    (gdb) disas
    ```
    你可能会看到类似这样的代码：
    ```asm
    0x400ee0 <+0>:   sub    $0x8,%rsp
    0x400ee4 <+4>:   mov    $0x402400,%esi    ; 注意这个地址！
    0x400ee9 <+9>:   callq  0x401338 <strings_not_equal>
    0x400eee <+14>:  test   %eax,%eax
    0x400ef0 <+16>:  je     0x400ef7 <+23>
    0x400ef2 <+18>:  callq  0x40143a <explode_bomb>
    ```

3.  **分析逻辑**:
    - `mov $0x402400,%esi`: 把一个地址 `0x402400` 放入 `%esi` (第二个参数)。
    - `callq strings_not_equal`: 调用比较函数。你的输入通常在 `%rdi` (第一个参数)，而标准答案在 `%rsi` (第二个参数)。
    - `test %eax,%eax` 和 `je`: 如果返回值是 0 (相等)，就跳转到安全区；否则爆炸。

4.  **获取答案**:
    既然 `%esi` 里存的是标准答案的地址，我们直接看内存！
    ```gdb
    (gdb) x/s 0x402400
    0x402400: "Border relations with Canada have never been better."
    ```
    
5.  **验证**:
    这就找到了！答案就是 "Border relations with Canada have never been better."。
    下次运行 `run` 时直接输入这句话即可过关。

### Step 3: 记录答案
每解出一关，把答案保存在一个文本文件里（例如 `solution.txt`），每行一个答案。
这样下次运行炸弹时，可以直接 `gdb bomb` 然后 `run < solution.txt`，自动输入之前的答案，直达最新关卡。

---

## 第五部分：规则与评分 (Rules & Grading)

**重要：以下内容整合自 README，请严格遵守。**

### 1. 评分标准
总分由以下部分组成：
- **炸弹完成分**: 成功拆解 Phase 1-6 和 Secret Phase。
- **报告分**:
    1.  **Scoreboard 截图 (1分)**: 必须在报告中贴上你在计分板上的得分截图。
    2.  **分数表格 (1分)**: 填写每道题的分数。
    3.  **题目分析 (21分)**: 6个普通关卡 + Secret关卡，每题分析占3分。**即使没做出来，也要写分析思路！**
    4.  **题目答案 (7分)**: 每题答案占1分。
    5.  **扣分项**: 分数填写错误扣1分，截图错误扣5分。

### 2. 报告要求 (`report/report.md`)
- **格式**: 使用 Markdown。
- **内容**:
    - 不要贴大段代码（用伪代码或关键片段）。
    - 采用“总-分”结构：先说结论，再展开分析。
    - 必须包含分析过程，不能只有答案。
- **提交**: 提交 `report.md`，推荐同时提交导出的 PDF。

### 3. 计分板与炸弹获取
- **下载**: [炸弹编译页面](https://ics.men.ci/bomb/) (需校园网)
- **查看分数**: [计分板页面](https://ics.men.ci/bomb/scoreboard) (需校园网)
- **注意**: 不要挂梯子访问这些内网地址。

### 4. NuclearLab (附加任务)
- 位于 `nuclearlab/` 目录。
- 运行方式: `chmod +x nuclear && ./nuclear [学号] [密码]`
- 密码在 `nuclearlab/README.txt` 中。
- 完成情况也可以写进报告中。

---

## 第六部分：常见问题与解决方案 (Troubleshooting)

### 问题 1：Permission Denied - "cannot execute"

**现象**:
```
(gdb) run
Starting program: /home/seraphic/bomblab-2025-seraphic663/bomblab/bomb
/bin/bash: line 1: /home/seraphic/bomblab-2025-seraphic663/bomblab/bomb: Permission denied
During startup program exited with code 127.
```

**原因分析**:
你下载的 `bomb` 文件没有执行权限（executable permission）。在 Linux 中，文件有三种权限：**读 (r)**、**写 (w)**、**执行 (x)**。即使是可执行程序，也必须标记为有执行权限才能运行。

检查权限：
```bash
ls -la bomb
```
如果看到 `-rw-r--r--` 这样的结果，说明缺少执行权限（应该是 `-rwx------` 之类的）。

**解决方案**:
在终端运行以下命令给 `bomb` 添加执行权限：
```bash
chmod +x bomb
```
然后再试一遍：
```bash
gdb bomb
(gdb) break phase_1
(gdb) run
```

### 问题 2：No frame selected

**现象**:
```
(gdb) disas
No frame selected.
```

**原因分析**:
这个错误说明程序还没有运行或已经退出。`disas` 命令需要程序正在运行或者暂停在某个断点上，才能查看当前栈帧 (stack frame) 的汇编代码。

**解决方案**:
确保程序已经启动并停在断点上。完整步骤：
```gdb
(gdb) break phase_1       # 设置断点
(gdb) run                  # 运行程序
Please enter the response, then press return once more.
[此时输入任意字符串，比如 "hello"]
[按回车键两次]
Breakpoint 1, 0x0000000000001435 in phase_1 ()
(gdb) disas               # 现在就能看到汇编了
```

---

## 第六部分：GDB 命令速查表 (Cheat Sheet)

| 命令 | 缩写 | 解释 | 典型用法 |
| :--- | :--- | :--- | :--- |
| `break` | `b` | **下断点**。程序运行到这里会自动暂停。 | `b phase_1` (在第一关入口暂停) |
| `run` | `r` | **运行程序**。 | `r` 或 `r solution.txt` (从文件读取输入) |
| `continue` | `c` | **继续运行**。直到遇到下一个断点或程序结束。 | `c` |
| `nexti` | `ni` | **单步跳过**。执行下一条机器指令，如果是函数调用，不进去，直接把函数执行完。 | `ni` |
| `stepi` | `si` | **单步进入**。执行下一条机器指令，如果是函数调用，会跳进函数内部。 | `si` |
| `disassemble` | `disas` | **反汇编**。显示当前函数的汇编代码。 | `disas` |
| `print` | `p` | **打印值**。查看变量、寄存器或计算表达式。 | `p $rax` (看rax的值), `p 0x10` (看16进制对应的十进制) |
| `info registers` | `i r` | **查看寄存器**。一次性看所有寄存器的值。 | `i r` |
| `x` | `x` | **查看内存** (Examine)。非常强大。 | `x/s $rdi` (查看rdi指向的地址存的**字符串**)<br>`x/d $rsp` (查看栈顶存的**整数**) |
| `quit` | `q` | **退出 GDB**。 | `q` |

### 常用寄存器用途速记
- `%rax`: **返回值** (函数算完的结果通常在这)。
- `%rdi`: **第1个参数** (比如 `string_length(str)`，`str` 的地址就在这)。
- `%rsi`: **第2个参数**。
- `%rdx`: **第3个参数**。

---

## 第七部分：Phase 1 真实案例解析 (Real Phase 1 Walkthrough)

### 背景：你拿到的真实汇编代码

在 `bomb.asm` 中搜索 `<phase_1>` 后，你会找到这样的代码：

```asm
0000000000001435 <phase_1>:
    1435:	48 83 ec 08          	sub    $0x8,%rsp
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3180 <_IO_stdin_used+0x180>
    1440:	e8 41 08 00 00       	call   1c86 <strings_not_equal>
    1445:	85 c0                	test   %eax,%eax
    1447:	75 05                	jne    144e <phase_1+0x19>
    1449:	48 83 c4 08          	add    $0x8,%rsp
    144d:	c3                   	ret
    144e:	e8 98 0a 00 00       	call   1eeb <explode_bomb>
    1453:	eb f4                	jmp    1449 <phase_1+0x14>
```

### 解析步骤 (Detailed Breakdown)

#### 第1步：理解前期准备
```asm
    1435:	48 83 ec 08          	sub    $0x8,%rsp
```
- **含义**: 从栈指针（`%rsp`）中减去 8，腾出 8 字节的栈空间。
- **你需要知道**: 这是函数的常规开头，不涉及核心逻辑，跳过。

#### 第2步：加载标准答案地址
```asm
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi        # 3180 <_IO_stdin_used+0x180>
```
- **指令**: `lea` (Load Effective Address，加载有效地址)。
- **含义**: 计算 `0x1d40 + (当前指令地址 + 偏移)` 的结果，存到 `%rsi`。
- **注释翻译**: `# 3180` 意思是，这个地址计算的结果指向内存地址 `0x3180`。
- **关键点**: `%rsi` 是第 2 个参数寄存器！这说明即将调用的函数会用到这个地址。

#### 第3步：调用字符串比较函数
```asm
    1440:	e8 41 08 00 00       	call   1c86 <strings_not_equal>
```
- **指令**: `call` 调用函数。
- **函数名**: `strings_not_equal`。
- **逻辑推导**:
  - 根据 x86-64 调用约定，第 1 个参数应该在 `%rdi` 中。
  - 第 2 个参数应该在 `%rsi` 中（我们刚存入的 `0x3180` 地址）。
  - 这个函数会比较"第 1 个参数的字符串"（你的输入）和"第 2 个参数的字符串"（标准答案）。
  - **返回值**: 如果两个字符串相等，返回 0；否则返回非零值（通常是 1）。
  - **返回值位置**: 返回值存在 `%eax` 中。

#### 第4步：检查比较结果
```asm
    1445:	85 c0                	test   %eax,%eax
```
- **指令**: `test` 进行位与操作，用来判断 `%eax` 是否为 0。
- **含义**: 检查 `strings_not_equal` 的返回值。

#### 第5步：决定是否爆炸
```asm
    1447:	75 05                	jne    144e <phase_1+0x19>
```
- **指令**: `jne` (Jump if Not Equal)。
- **含义**: "如果不相等（`%eax` 不为 0），就跳到 `0x144e`"。
- **跳转目标** (`0x144e`):
  ```asm
  144e:	e8 98 0a 00 00       	call   1eeb <explode_bomb>
  ```
  这是调用 `explode_bomb()`！**所以，如果输入错误，程序就跳到这里爆炸。**

#### 第6步：安全返回
```asm
    1449:	48 83 c4 08          	add    $0x8,%rsp
    144d:	c3                   	ret
```
- 如果 `%eax` 为 0（字符串相等），就不跳，继续往下走。
- `add $0x8,%rsp`: 恢复栈指针。
- `ret`: 安全返回，过关！

### 总结逻辑流

```
我的输入（存在 %rdi 中）
         ↓
    [调用 strings_not_equal]
         ↓
比较：我的输入 vs. 地址 0x3180 中的标准答案
         ↓
    返回结果到 %eax
         ↓
    [test %eax,%eax]
         ↓
  如果 %eax == 0（相等）  ——→ 跳过爆炸，安全返回 ✓
  如果 %eax != 0（不相等）  ——→ 跳转到 explode_bomb() ✗
```

### 关键问题：标准答案是什么？

标准答案存在内存地址 `0x3180`。现在有两种方式找到它：

#### 方式 1：静态分析（查看 `bomb.asm`）
1.  打开 `bomb.asm` 文件。
2.  搜索 `3180`，看看这个地址附近是否有可读的字符串。
3.  如果能看到形如 `ascii "..."` 的内容，那就是答案。

#### 方式 2：动态调试（使用 GDB）

**步骤**:

1.  **启动 GDB**:
    ```bash
    gdb bomb
    ```

2.  **在 phase_1 中断**:
    ```gdb
    (gdb) break phase_1
    (gdb) run
    ```
    程序提示 "Please enter the response, then press return once more."，你随便输入一个字符串（比如 "test"），然后按回车。

3.  **程序暂停在 phase_1 入口**。查看当前汇编：
    ```gdb
    (gdb) disas
    ```
    输出会包括上面那些指令。

4.  **查看字符串所在地址**:
    ```gdb
    (gdb) x/s 0x3180
    ```
    这个命令的意思是："从地址 0x3180 开始，把内存内容当**字符串** (`s`) 来读"。
    输出可能是：
    ```
    0x3180: "Some string here"
    ```
    这就是标准答案！

5.  **继续单步调试确认** (可选):
    ```gdb
    (gdb) ni
    (gdb) ni
    ... 一直 ni 到 strings_not_equal 函数前 ...
    ```
    在调用之前，检查 `%rsi` 的值：
    ```gdb
    (gdb) info registers rsi
    ```
    确认 `%rsi` 确实是 `0x3180`。

### 实战演练：完整操作步骤

现在假设你按照这个思路去做，完整的操作流程是：

1.  **准备工作**:
    ```bash
    cd bomblab
    objdump -d bomb > bomb.asm
    ```

2.  **第一次尝试（快速查找）**:
    - 打开 `bomb.asm` 文件。
    - `Ctrl+F` 搜索 `3180`。
    - 看看附近是否有可读的 ASCII 字符串。

3.  **如果能看到答案**:
    - 记下那个字符串。
    - 跳到第 5 步验证。

4.  **如果看不清楚（静态分析失败）**:
    - 启动 GDB：`gdb bomb`。
    - `break phase_1`。
    - `run`，然后随意输入（比如 "guess"）。
    - `x/s 0x3180`，看结果。
    - 记下那个字符串。

5.  **验证答案**:
    - 创建一个文本文件 `solution.txt`，第一行写上这个字符串。
    - 重新运行炸弹：`gdb bomb`。
    - `run < solution.txt`。
    - 如果程序打印 "Phase 1 defused. How about the next one?" 就成功了！
    - 否则，回到第 2 步重新检查。

---

## 现在，开始行动！

1.  打开终端。
2.  `cd bomblab`
3.  `objdump -d bomb > bomb.asm`
4.  按照 Phase 1 的解析步骤，查找 `0x3180` 地址的内容。
5.  尝试用 GDB 或 `bomb.asm` 静态分析找到标准答案。
6.  将答案写入 `solution.txt` 的第一行。
7.  运行 `gdb bomb` 并 `run < solution.txt` 验证。
8.  遇到问题？参考上面的"方式 2：动态调试"或"GDB 命令速查表"。
9.  Phase 1 过关后，用同样的思路分析 Phase 2、3、4、5、6 和 Secret Phase。
