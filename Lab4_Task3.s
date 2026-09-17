.data
.align 2
array:
.word 23, 12, 5, 44, 98, 53, 6, 89, 32, 65
.text

main:
    la x10, array # x10 = address of array
    li x11, 10 # x11 = len
    jal x1, bubble # call bubble

bubble:
    beq x10, x0, Exit # if a == NULL return
    beq x11, x0, Exit # if len == 0 return

    li x5, 0 # i = 0

Outer:
    bge x5, x11, Exit # if i >= len exit
    addi x6, x5, 1 # j = i+1

Inner:
    bge x6, x11, NextI # if j >= len go to next i

    slli x7, x5, 2 # i * 4
    add x7, x10, x7 # address of a[i]
    lw x8, 0(x7) # x8 = a[i]

    slli x9, x6, 2 # j * 4
    add x9, x10, x9 # address of a[j]
    lw x13, 0(x9) # x13 = a[j]

    bge x8, x13, NoSwap # if a[i] >= a[j], no swap

    sw x13, 0(x7) # a[i] = a[j]
    sw x8, 0(x9) # a[j] = old a[i]

NoSwap:
    addi x6, x6, 1 # j++
    j Inner

NextI:
    addi x5, x5, 1 # i++
    j Outer

Exit:
    jalr x0, x1, 0 # return