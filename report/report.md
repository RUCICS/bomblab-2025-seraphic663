# bomblab 报告

姓名：赵梓名		学号：2024201617

| 总分 | phase_1 | phase_2 | phase_3 | phase_4 | phase_5 | phase_6 | secret_phase |
| --------- | ------------- | ------------- | ------------- | ----------------- |-----------|-----------|-----------|
| 3        | 1            | 1            | 1            | 1 |1  |0  |0  |


scoreboard 截图：

![image](./imgs/image.png)



## 解题报告

### phase_1

```c
    1439:	48 8d 35 40 1d 00 00 	lea    0x1d40(%rip),%rsi
    1440:	e8 41 08 00 00       	call   1c86 <strings_not_equal>
    1445:	85 c0                	test   %eax,%eax
    1447:	75 05                	jne    144e <phase_1+0x19>
    144e:	e8 98 0a 00 00       	call   1eeb <explode_bomb>
```

​	为不跳转到 `144e` 行使得炸弹引爆，在 `1445` 行比较中，需输入的字符串与 `0x1d40(%rip)` 一致。访问该处：

```assembly
   0x0000555555555439 <+4>:     lea    0x1d40(%rip),%rsi        # 0x555555557180
(gdb) x/s 0x555555557180
0x555555557180: "But I am so still here surrender the silence..."
```

​	可见 `phase_2` 答案为：**But I am so still here surrender the silence...**

---



### phase_2

``` c
int matA[2][3] = {966, 649, 371, 194, 951, 493};
int matB[3][2] = {800, 617, 237, 278, 866, 223};	// 外部矩阵定义

void phase_2(char *input) {
    // 读取并检验
    int a, b, c, d;		int expected[4] = {a, b, c, d};
    if (sscanf(input, "%d %d %d %d", &a, &b, &c, &d) != 4)	explode_bomb();

    // 计算并验证结果
    int result_matrix[2][2] = matA \cdot matB
    if (result_flat[i] != expected[i])	explode_bomb();
}
```

​	程序实现了两个矩阵的乘法，要求我们正确输入结果。如何得知矩阵的初始值？注意到以下两行：

```assembly
   0x000055555555548e <+57>:    lea    0x4c9b(%rip),%rdi        # 0x55555555a130 <matA.2>
   0x00005555555554bb <+102>:   lea    0x4c4e(%rip),%rsi        # 0x55555555a110 <matB.1>
```

​	于是：

```assembly
(gdb) x/8wd 0x55555555a130
0x55555555a130 <matA.2>:        966     649     371     194
0x55555555a140 <matA.2+16>:     951     493     0       0
(gdb) x/8wd 0x55555555a110
0x55555555a110 <matB.1>:        800     617     237     278
0x55555555a120 <matB.1+16>:     866     223     0       0
```

​	通过计算，本题答案是：**1247899    859177    807525    494015**

---



### phase_3

```c
void phase_3(char *input) {
    // 读取并检验
    int a, b, result;
    if (sscanf(input, "%d %d", &a, &b) <= 1)	explode_bomb();
    if (b >= 0 || a > 7)	explode_bomb(); 

    // 计算并验证结果
    switch (a) {
        case 0: case 1: case 2: case 3: explode_bomb();	break;
        case 4: case 6: result = 0;	break;
        case 5: case 7: result = -542;	break;
        default: explode_bomb();
    }
    if (a > 5 || b != result)	explode_bomb();
}
```

​	解为：**5    -542** 。由于 `switch` 表，可行的 `a` 只能为 `4` 或 `5` ，由于 `b` 负数的限制，只有以上唯一解。

​	这道题 `jump` 语句较多，需灵活判断怎样的取值是安全的。

---



### phase_4

```c
int func4_1(int n) {	// n 在 %rdi 中
    if (n <= 0)	return 0;
    if (n == 1) return 1;
    return 2 * func4_1(n - 1) + 1;	// 以 %eax 返回
}
```

```c
void func4_2(int n, int ebx, char r12, char r13, char r14, char *output) {
    // 基础情况：第一步
    if (n == 1) {output[0] = r12;	output[1] = r13;	output[2] = '\0';	return;}

    int steps = func4_1(n - 1);  // 2^(n-1) - 1
    // 递归处理 n-1
    if (steps >= ebx) func4_2(n-1, ebx, r14, r13, r12, output);
    // 刚好第 ebx 步
    else if (steps + 1 == ebx) {output[0] = r12;	output[1] = r13;	output[2] = '\0';}
    // 跳过前 steps+1 步
    else {ebx = ebx - steps - 1;	func4_2(n-1, ebx, r13, r12, r14, output);}
}
```

```c
void phase2(char *input) {
    // 读取并检验
    int num;	char steps[3];	char expected[3];
    if (sscanf(input, "%d %s", &a, &b) != 2)	explode_bomb();
    if (a != func4_1(5) || strlen(b) != 2)		explode_bomb();
    
    // 计算并验证结果
    func4_2(5, 12, 'A', 'B', 'C', expected);
    if (strcmp(steps, expected) != 0)	explode_bomb();
}
```

​	简言之，`func4_1` 通过递归，计算 `n` 阶 `Hanoi Tower` 的最少步数；`func4_2` 同样使用递归，计算此时某一步的移动方法。而主函数负责检验两个输入参数，第一个必须是 `5` 阶 `Hanoi Tower` 的最少移动步数 `31` ，第二个是第 `12` 步的移动方法 `CB` ，这样才能避免爆炸。因此，答案为： **31    CB**

---



### phase_5

```c
void phase_5(char *input) {
    // 读取并检验
    int a, b;
    if (sscanf(input, "%d %d", &a, &b) <= 1)	explode_bomb();
    if (a >= 0)	explode_bomb();
    int index = a & 0xf;
    if (index == 0xf)	explode_bomb();
    
    // 计算并验证结果
    int sum = 0, count = 0, cur_value = 0, array[16] = [<array>];
    do {
        cur_value = array[index];
        sum += cur_value;	count++;
        index = (unsigned char)cur_value;
    } while (cur_value != 0xf);
    if (count != 7 || b != sum)	explode_bomb();
}
```

​	这题比较有趣，观察到编码了一个数列（更像链表），访问之：

```assembly
   0x0000555555555800 <+80>:    lea    0x1a39(%rip),%rsi        # 0x555555557240 <array.0>
(gdb) x/16d 0x555555557240
0x555555557240 <array.0>:       10      2       14      7
0x555555557250 <array.0+16>:    8       12      15      11
0x555555557260 <array.0+32>:    0       4       1       13
0x555555557270 <array.0+48>:    3       9       6       5
```

​	得到 `array[16] = [10, 2, ... , 5]` 。接下来我们需要找到一个参数 `index` ，使得

```
起点：index = 8
├─→ array[8]  = 0   （值是0，下一个index = 0）
│
├─→ array[0]  = 10  （值是10，下一个index = 10）
│
├─→ array[10] = 1   （值是1，下一个index = 1）
│
├─→ array[1]  = 2   （值是2，下一个index = 2）
│
├─→ array[2]  = 14  （值是14，下一个index = 14）
│
├─→ array[14] = 6   （值是6，下一个index = 6）
│
├─→ array[6]  = 15  （值是15 = 0xf，**停止！**）
│
└─ 累加：0+10+1+2+14+6+15 = 48  ✅
   循环次数：7 次  ✅
```





---



### phase_6

```assembly
Dump of assembler code for function read_six_numbers:
   0x0000555555555fab <+0>:     sub    $0x8,%rsp
   0x0000555555555faf <+4>:     mov    %rsi,%rdx
   0x0000555555555fb2 <+7>:     lea    0x4(%rsi),%rcx
   0x0000555555555fb6 <+11>:    lea    0x14(%rsi),%rax
   0x0000555555555fba <+15>:    push   %rax
   0x0000555555555fbb <+16>:    lea    0x10(%rsi),%rax
   0x0000555555555fbf <+20>:    push   %rax
   0x0000555555555fc0 <+21>:    lea    0xc(%rsi),%r9
   0x0000555555555fc4 <+25>:    lea    0x8(%rsi),%r8
   0x0000555555555fc8 <+29>:    lea    0x15fc(%rip),%rsi        # 0x5555555575cb
   0x0000555555555fcf <+36>:    mov    $0x0,%eax
   0x0000555555555fd4 <+41>:    call   0x555555555150 <__isoc99_sscanf@plt>
   0x0000555555555fd9 <+46>:    add    $0x10,%rsp
   0x0000555555555fdd <+50>:    cmp    $0x5,%eax
   0x0000555555555fe0 <+53>:    jle    0x555555555fe7 <read_six_numbers+60>
   0x0000555555555fe2 <+55>:    add    $0x8,%rsp
   0x0000555555555fe6 <+59>:    ret
   0x0000555555555fe7 <+60>:    call   0x555555555eeb <explode_bomb>
End of assembler dump.
```



```assembly
Dump of assembler code for function phase_6:
   0x0000555555555847 <+0>:     push   %r14
   0x0000555555555849 <+2>:     push   %r13
   0x000055555555584b <+4>:     push   %r12
   0x000055555555584d <+6>:     push   %rbp
   0x000055555555584e <+7>:     push   %rbx
   0x000055555555584f <+8>:     sub    $0x60,%rsp
   0x0000555555555853 <+12>:    mov    %fs:0x28,%rax
   0x000055555555585c <+21>:    mov    %rax,0x58(%rsp)
   0x0000555555555861 <+26>:    xor    %eax,%eax
   0x0000555555555863 <+28>:    mov    %rsp,%r13
   0x0000555555555866 <+31>:    mov    %r13,%rsi
*   0x0000555555555869 <+34>:    call   0x555555555fab <read_six_numbers>
   0x000055555555586e <+39>:    mov    $0x1,%r14d
   0x0000555555555874 <+45>:    mov    %rsp,%r12
y   0x0000555555555877 <+48>:    jmp    0x5555555558a1 <phase_6+90>
!   0x0000555555555879 <+50>:    call   0x555555555eeb <explode_bomb>
   0x000055555555587e <+55>:    jmp    0x5555555558b0 <phase_6+105>
   0x0000555555555880 <+57>:    add    $0x1,%rbx
   0x0000555555555884 <+61>:    cmp    $0x5,%ebx
   0x0000555555555887 <+64>:    jg     0x555555555899 <phase_6+82>
   
   0x0000555555555889 <+66>:    mov    (%r12,%rbx,4),%eax
   0x000055555555588d <+70>:    cmp    %eax,0x0(%rbp)
y   0x0000555555555890 <+73>:    jne    0x555555555880 <phase_6+57>
!   0x0000555555555892 <+75>:    call   0x555555555eeb <explode_bomb>
   0x0000555555555897 <+80>:    jmp    0x555555555880 <phase_6+57>
   0x0000555555555899 <+82>:    add    $0x1,%r14
   0x000055555555589d <+86>:    add    $0x4,%r13
   0x00005555555558a1 <+90>:    mov    %r13,%rbp
   0x00005555555558a4 <+93>:    mov    0x0(%r13),%eax
   0x00005555555558a8 <+97>:    sub    $0x1,%eax
   0x00005555555558ab <+100>:   cmp    $0x5,%eax
n   0x00005555555558ae <+103>:   ja     0x555555555879 <phase_6+50>
   0x00005555555558b0 <+105>:   cmp    $0x5,%r14d
e   0x00005555555558b4 <+109>:   jg     0x5555555558bb <phase_6+116>
   0x00005555555558b6 <+111>:   mov    %r14,%rbx
   0x00005555555558b9 <+114>:   jmp    0x555555555889 <phase_6+66>
   
   0x00005555555558bb <+116>:   mov    $0x0,%esi
   0x00005555555558c0 <+121>:   mov    (%rsp,%rsi,4),%ecx
   0x00005555555558c3 <+124>:   mov    $0x1,%eax
   0x00005555555558c8 <+129>:   lea    0x4941(%rip),%rdx        # 0x55555555a210 <node1>
   0x00005555555558cf <+136>:   cmp    $0x1,%ecx
   0x00005555555558d2 <+139>:   jle    0x5555555558df <phase_6+152>
   
   0x00005555555558d4 <+141>:   mov    0x8(%rdx),%rdx
   0x00005555555558d8 <+145>:   add    $0x1,%eax
   0x00005555555558db <+148>:   cmp    %ecx,%eax
   0x00005555555558dd <+150>:   jne    0x5555555558d4 <phase_6+141>
   
   0x00005555555558df <+152>:   mov    %rdx,0x20(%rsp,%rsi,8)
   0x00005555555558e4 <+157>:   add    $0x1,%rsi
   0x00005555555558e8 <+161>:   cmp    $0x6,%rsi
   0x00005555555558ec <+165>:   jne    0x5555555558c0 <phase_6+121>
   
   0x00005555555558ee <+167>:   mov    0x20(%rsp),%rbx
   0x00005555555558f3 <+172>:   mov    0x28(%rsp),%rax
   0x00005555555558f8 <+177>:   mov    %rax,0x8(%rbx)
   0x00005555555558fc <+181>:   mov    0x30(%rsp),%rdx
   0x0000555555555901 <+186>:   mov    %rdx,0x8(%rax)
   0x0000555555555905 <+190>:   mov    0x38(%rsp),%rax
   0x000055555555590a <+195>:   mov    %rax,0x8(%rdx)
   0x000055555555590e <+199>:   mov    0x40(%rsp),%rdx
   0x0000555555555913 <+204>:   mov    %rdx,0x8(%rax)
   0x0000555555555917 <+208>:   mov    0x48(%rsp),%rax
   0x000055555555591c <+213>:   mov    %rax,0x8(%rdx)
   0x0000555555555920 <+217>:   movq   $0x0,0x8(%rax)
   0x0000555555555928 <+225>:   mov    $0x5,%ebp
   0x000055555555592d <+230>:   jmp    0x555555555938 <phase_6+241>
   0x000055555555592f <+232>:   mov    0x8(%rbx),%rbx
   0x0000555555555933 <+236>:   sub    $0x1,%ebp
f   0x0000555555555936 <+239>:   je     0x555555555949 <phase_6+258>
   
   0x0000555555555938 <+241>:   mov    0x8(%rbx),%rax
   0x000055555555593c <+245>:   mov    (%rax),%eax
   0x000055555555593e <+247>:   cmp    %eax,(%rbx)
r   0x0000555555555940 <+249>:   jle    0x55555555592f <phase_6+232>
!   0x0000555555555942 <+251>:   call   0x555555555eeb <explode_bomb>
   0x0000555555555947 <+256>:   jmp    0x55555555592f <phase_6+232>
   0x0000555555555949 <+258>:   mov    0x58(%rsp),%rax
   0x000055555555594e <+263>:   sub    %fs:0x28,%rax
f   0x0000555555555957 <+272>:   jne    0x555555555966 <phase_6+287>
   0x0000555555555959 <+274>:   add    $0x60,%rsp
   0x000055555555595d <+278>:   pop    %rbx
   0x000055555555595e <+279>:   pop    %rbp
   0x000055555555595f <+280>:   pop    %r12
   0x0000555555555961 <+282>:   pop    %r13
   0x0000555555555963 <+284>:   pop    %r14
   0x0000555555555965 <+286>:   ret
   0x0000555555555966 <+287>:   call   0x5555555550a0 <__stack_chk_fail@plt>
End of assembler dump.
```



```c
struct Node {
    int data;
    int padding;
    struct Node *next;
};

extern struct Node node1, node2, node3, node4, node5, node6;

void phase_6(char *input) {
    // 读取并检验
    int nums[6];
    read_six_numbers(input, nums);
    for (int i = 0; i < 6; i++) {	// 正整数 1~6 的某个排序
        if ((unsigned)(nums[i] - 1) > 5)	explode_bomb();
        for (int j = i + 1; j < 6; j++) {if (nums[i] == nums[j])	explode_bomb();}
    }
    
    // 计算并验证结果
    struct Node *nodes[6], cur;
    for (int i = 0; i < 6; i++) {
        cur = &node1;
        for (int j = 1; j < nums[i]; j++)	cur = cur->next;
        nodes[i] = cur;
    }
    
    for (int i = 0; i < 5; i++)	nodes[i]->next = nodes[i + 1];
    nodes[5]->next = NULL;
    
    cur = nodes[0];
    for (int i = 0; i < 5; i++) {
        if (cur->data < cur->next->data)	explode_bomb();
        cur = cur->next;
    }
}
```





```c

```





---



### serect_phase

```assembly
0000000000001b92 <secret_phase>:
```

​	阅读代码找到了 `serect_phase` 的位置，我们查找得到

```assembly
Dump of assembler code for function phase_defused:
   0x0000555555556126 <+0>:     sub    $0x8,%rsp
   0x000055555555612a <+4>:     mov    $0x1,%edi
   0x000055555555612f <+9>:     call   0x555555555e1e <send_msg>
   0x0000555555556134 <+14>:    cmpl   $0x6,0x45dd(%rip)        # 0x55555555a718 <num_input_strings>
   0x000055555555613b <+21>:    je     0x555555556142 <phase_defused+28>
   0x000055555555613d <+23>:    add    $0x8,%rsp
   0x0000555555556141 <+27>:    ret
   0x0000555555556142 <+28>:    movzbl 0x482f(%rip),%ecx        # 0x55555555a978 <input_strings+600>
   0x0000555555556149 <+35>:    test   %cl,%cl
   0x000055555555614b <+37>:    je     0x555555556181 <phase_defused+91>
   0x000055555555614d <+39>:    mov    $0x1,%eax
   0x0000555555556152 <+44>:    mov    $0x0,%edx
   0x0000555555556157 <+49>:    lea    0x481a(%rip),%rdi        # 0x55555555a978 <input_strings+600>
   0x000055555555615e <+56>:    cmp    $0x20,%cl
   0x0000555555556161 <+59>:    sete   %cl
   0x0000555555556164 <+62>:    movzbl %cl,%ecx
   0x0000555555556167 <+65>:    add    %ecx,%edx
   0x0000555555556169 <+67>:    mov    %eax,%esi
   0x000055555555616b <+69>:    movzbl (%rdi,%rax,1),%ecx
   0x000055555555616f <+73>:    add    $0x1,%rax
   0x0000555555556173 <+77>:    cmp    $0x5,%edx
   0x0000555555556176 <+80>:    jg     0x55555555617c <phase_defused+86>
   0x0000555555556178 <+82>:    test   %cl,%cl
   0x000055555555617a <+84>:    jne    0x55555555615e <phase_defused+56>
   0x000055555555617c <+86>:    cmp    $0x6,%edx
   0x000055555555617f <+89>:    je     0x55555555619b <phase_defused+117>
   0x0000555555556181 <+91>:    lea    0x1200(%rip),%rdi        # 0x555555557388
   0x0000555555556188 <+98>:    call   0x555555555070 <puts@plt>
   0x000055555555618d <+103>:   lea    0x1224(%rip),%rdi        # 0x5555555573b8
   0x0000555555556194 <+110>:   call   0x555555555070 <puts@plt>
   0x0000555555556199 <+115>:   jmp    0x55555555613d <phase_defused+23>
   0x000055555555619b <+117>:   movslq %esi,%rsi
   0x000055555555619e <+120>:   lea    0x47d3(%rip),%rax        # 0x55555555a978 <input_strings+600>
   0x00005555555561a5 <+127>:   lea    (%rsi,%rax,1),%rdi
   0x00005555555561a9 <+131>:   lea    0x1471(%rip),%rsi		# 0x555555557621
   0x00005555555561b0 <+138>:   call   0x555555555c86 <strings_not_equal>
   0x00005555555561b5 <+143>:   test   %eax,%eax
   0x00005555555561b7 <+145>:   jne    0x555555556181 <phase_defused+91>
   0x00005555555561b9 <+147>:   lea    0x1168(%rip),%rdi        # 0x555555557328
   0x00005555555561c0 <+154>:   call   0x555555555070 <puts@plt>
   0x00005555555561c5 <+159>:   lea    0x1184(%rip),%rdi        # 0x555555557350
   0x00005555555561cc <+166>:   call   0x555555555070 <puts@plt>
   0x00005555555561d1 <+171>:   mov    $0x0,%eax
   0x00005555555561d6 <+176>:   call   0x555555555b92 <secret_phase>
   0x00005555555561db <+181>:   jmp    0x555555556181 <phase_defused+91>
End of assembler dump.
```







## 反馈/收获/感悟/总结

<!-- 这一节，你可以简单描述你在这个 lab 上花费的时间/你认为的难度/你认为不合理的地方/你认为有趣的地方 -->

<!-- 或者是收获/感悟/总结 -->

<!-- 200 字以内，可以不写 -->

## 参考的重要资料

<!-- 有哪些文章/论文/PPT/课本对你的实现有重要启发或者帮助，或者是你直接引用了某个方法 -->

<!-- 请附上文章标题和可访问的网页路径 -->

