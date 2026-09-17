addi x1, x0, 1 # x1 = 1
addi x10, x0, 5 # n = 5

While:
    bge x0, x10, Exit # if n <= 0 exit
    mul x1, x1, x10 # x1 = x1 * n
    addi x10, x10, -1 # n = n - 1
    jal x0, While # go back to loop

Exit:
    addi x10, x1, 0 # return x1 in x10