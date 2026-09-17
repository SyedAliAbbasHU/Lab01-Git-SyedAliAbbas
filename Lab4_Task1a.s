li sp, 0x100
li x10, 3

jal x1, fact
j end

fact:
    addi x5, x0, 1
    bge x10, x5, L1 # if n >= 1 go to recursive case

    addi x10, x0, 1 # if n = 0 return 1
    jalr x0, 0(x1)

L1:
    addi sp, sp, -8 # make space for stack frame
    sw x1, 4(sp) # save return address
    sw x10, 0(sp) # save current n

    addi x10, x10, -1 # n = n - 1
    jal x1, fact # fact(n-1)

    addi x6, x10, 0

    lw x10, 0(sp)
    lw x1, 4(sp)
    addi sp, sp, 8 # remove stack

    mul x10, x10, x6 # n * fact(n-1)
    jalr x0, 0(x1) # return result

end: