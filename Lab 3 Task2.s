# Task 2: Calling leaf_example function
addi sp, x0, 0x100 # set stack pointer
addi x10, x0, 4 # x10 = g = 4
addi x11, x0, 3 # x11 = h = 3
addi x12, x0, 2 # x12 = i = 2
addi x13, x0, 1 # x13 = j = 1

jal x1, leaf # call leaf function
addi x11, x10, 0 # copy result to x11 for printing

li x10, 1 # print integer
ecall # display result

li x10, 10 # exit program
ecall # end program

leaf:
addi sp, sp, -12 #space for 3 registers

sw x18, 0(sp) # save x18 on stack
sw x19, 4(sp) # save x19 on stack
sw x20, 8(sp) # save x20 on stack

add x18, x10, x11 # x18 = g + h
add x19, x12, x13 # x19 = i + j
sub x20, x18, x19 # x20 = (g + h) - (i + j)

addi x10, x20, 0 # return f in x10

lw x18, 0(sp) # restore x18
lw x19, 4(sp) # restore x19
lw x20, 8(sp) # restore x20

addi sp, sp, 12 # restore stack pointer
jalr x0, 0(x1) # return from function