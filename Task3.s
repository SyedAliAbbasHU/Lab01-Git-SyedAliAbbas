main:

    li x1, 5 # a = 5
    addi x2, x0, 0 # b = 0

    addi x1, x2, 32  # a = b + 32

    add x3, x1, x2 # c = a + b
    addi x4, x3, -5 # d = c - 5

    sub x5, x1, x4 # f = a - d
    sub x6, x2, x1 # g = b - a

    add x7, x5, x6 # h = f + g
    add x8, x7, x4 # e = h + d

    add x9, x1, x2 # i = a + b
    add x10, x4, x8 # j = d + e

    add x8, x9, x10 # e = i + j

end:
    j end # Infinite loop to end the program
