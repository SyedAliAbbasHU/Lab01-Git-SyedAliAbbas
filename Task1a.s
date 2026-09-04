bne x22, x23, Else # if x22 != x23, go to Else
add x19, x20, x21 # x19 = x20 + x21
beq x0, x0, Exit # go to Exit

Else:
    sub x19, x20, x21 # x19 = x20 - x21

Exit:
    add x0, x0, x0 # do nothing