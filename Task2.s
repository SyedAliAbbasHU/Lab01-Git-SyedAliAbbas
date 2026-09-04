addi x1, x0, 1 # x1 = 1
addi x2, x0, 2 # x2 = 2
addi x3, x0, 3 # x3 = 3
addi x4, x0, 4 # x4 = 4

addi x20, x0, 2 # i am using this just for the result (just for the ouput) the answer should be x21 = 10
addi x22, x0, 20
addi x23, x0, 10

beq x20, x1, Case01 # if x20 = 1
beq x20, x2, Case02 # if x20 = 2
beq x20, x3, Case03 # if x20 = 3
beq x20, x4, Case04 # if x20 = 4

default:
    add x21, x0, x0 # x21 = 0
    beq x0, x0, Exit # go to Exit

Case01:
    add x21, x22, x23 # x21 = x22 + x23
    beq x0, x0, Exit # go to Exit

Case02:
    sub x21, x22, x23 # x21 = x22 - x23
    beq x0, x0, Exit # go to Exit

Case03:
    slli x21, x22, 1 # x21 = x22 × 2
    beq x0, x0, Exit # go to Exit

Case04:
    srli x21, x22, 1 # x21 = x22 ÷ 2
    beq x0, x0, Exit # go to Exit

Exit: