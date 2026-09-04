addi x22, x0, 0 # i = 0
addi x1, x0, 10 # limit = 10
li x3, 0x200 # array base address

Loop_Start_1:

    bge x22, x1, Loop_End_1 # if i >= 10, end

    slli x2, x22, 2# offset = i * 4
    add x4, x3, x2 # address = base + offset
    sw x22, 0(x4) # store i
    addi x22, x22, 1 # i++

    jal x0, Loop_Start_1 # repeat

Loop_End_1: