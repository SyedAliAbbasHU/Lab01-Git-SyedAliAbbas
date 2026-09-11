# Task 4: strcpy function
addi x5, x0, 54 # x5 = ASCII value of 6
sb x5, 0x200(x0) # store 6 in y[0]

addi x5, x0, 53 # x5 = ASCII value of 5
sb x5, 0x201(x0) # store 5 in y[1]

sb x0, 0x202(x0) # storing 0 byte in y[2]

addi x10, x0, 0x100 # x10 = base address of x
addi x11, x0, 0x200 # x11 = base address of y

jal x1, strcpy # call strcpy

lb x5, 0x100(x0) # x5 = x[0]
lb x6, 0x101(x0) # x6 = x[1]
lb x7, 0x102(x0) # x7 = x[2]

strcpy:
addi sp, sp, -4 
sw x19, 0(sp) 

addi x19, x0, 0 # i = 0

loop:
add x5, x11, x19 # x5 = address of y[i]
lb x6, 0(x5) # x6 = y[i]

add x5, x10, x19 # x5 = address of x[i]
sb x6, 0(x5) # x[i] = y[i]

beq x6, x0, done # stop if byte is 0 or null

addi x19, x19, 1 # i = i + 1
beq x0, x0, loop # repeat loop

done:
lw x19, 0(sp) # restore x19
addi sp, sp, 4 # restore stack pointer
jalr x0, 0(x1) # return from function