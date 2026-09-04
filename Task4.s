addi x7, x0, 0 # i = 0

Outer_Loop:
    bge x7, x5, Loop_End # if i >= a it exits
    addi x29, x0, 0 # j = 0

Nested_Loop:
    bge x29, x6, Outer_Continue # if j >= b goes next i

    add x9, x7, x29 # x9 = i + j
    slli x8, x29, 4 # x8 = j * 16
    add x8, x10, x8 # x8 = address of D[4*j]
    sw x9, 0(x8) # D[4*j] = i + j

    addi x29, x29, 1 # j++
    beq x0, x0, Nested_Loop

Outer_Continue:
    addi x7, x7, 1 # i++
    beq x0, x0, Outer_Loop

Loop_End: