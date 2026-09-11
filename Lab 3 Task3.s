# Task 3: Calling swap function
addi x5, x0, 25 # x5 = 25
sw x5, 0x100(x0) # store 25 at 0x100

addi x6, x0, 50 # x6 = 50
sw x6, 0x104(x0) # store 50 at 0x104

addi x10, x0, 0x100 # x10 = address of v
addi x11, x0, 0 # x11 = k = 0

jal x1, swap # call swap

lw x5, 0x100(x0) # x5 = v[0]
lw x6, 0x104(x0) # x6 = v[1]

swap:
slli x12, x11, 2 # x12 = k * 4
add x12, x10, x12 # x12 = address of v[k]

lw x13, 0(x12) # x13 = v[k]
lw x14, 4(x12) # x14 = v[k+1]

sw x14, 0(x12) # v[k] = v[k+1]
sw x13, 4(x12) # v[k+1] = old v[k]

jalr x0, 0(x1) # return from function