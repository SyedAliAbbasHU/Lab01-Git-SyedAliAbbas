main:
    li x10, 12 # a = 12
    li x11, 18 # b = 18
    jal x1, find_lcm # call lcm
    j done

find_lcm:
    addi sp, sp, -12 # make stack space
    sw x1, 8(sp) # save return address
    sw x10, 4(sp) # save a
    sw x11, 0(sp) # save b

    jal x1, find_gcd # call gcd

    add x5, x10, x0 # save gcd
    lw x6, 4(sp) # get a
    lw x7, 0(sp) # get b
    mul x6, x6, x7 # a * b
    div x10, x6, x5 # lcm = (a*b) / gcd

    lw x1, 8(sp) # restore return address
    addi sp, sp, 12 # remove stack space
    jalr x0, x1, 0 # return

find_gcd:
    beq x11, x0, gcd_done # if b = 0
    rem x12, x10, x11 # remainder = a % b
    add x10, x11, x0 # a = b
    add x11, x12, x0 # b = remainder
    j find_gcd

gcd_done:
    jalr x0, x1, 0 # return gcd

done:
    add x0, x0, x0