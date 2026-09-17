li sp, 0x100 # set stack starting address
li x10, 5 # n = 5
jal x1, ntri # call ntri(5)
j end # go to end after result

ntri:
    addi sp, sp, -8 # make space in stack
    sw x1, 4(sp) # save return address
    sw x10, 0(sp) # save current n

    addi x5, x10, -1 # x5 = n - 1
    blt x0, x5, L1 # if n > 1, go to recursive call

    addi x10, x0, 1 # base case: return 1
    lw x1, 4(sp) # restore return address
    addi sp, sp, 8 # remove this stack frame
    jalr x0, 0(x1) # return to caller

L1:
    addi x10, x10, -1 # n = n - 1
    jal x1, ntri # call ntri(n - 1)

    addi x6, x10, 0 # save returned value
    lw x10, 0(sp) # get original n
    lw x1, 4(sp) # restore return address
    addi sp, sp, 8 # remove this stack frame

    add x10, x10, x6 # return n + ntri(n - 1)
    jalr x0, 0(x1) # return to caller

end: