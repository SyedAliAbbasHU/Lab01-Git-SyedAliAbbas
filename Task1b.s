Loop:

    slli x10, x22, 2 # offset = index * 4
    add x10, x10, x25 # address = base + offset
    lw x9, 0(x10) # load array value

    bne x9, x24, Exit # if value != x24, exit

    addi x22, x22, 1 # index++
    beq x0, x0, Loop # repeat loop

Exit: