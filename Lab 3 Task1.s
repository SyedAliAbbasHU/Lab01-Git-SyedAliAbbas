# Task 1: Calling sum function
addi x10, x0, 12 # x10 = a = 12
addi x11, x0, 12 # x11 = b = 12

jal x1, sum # call sum function
addi x11, x10, 0 # copy result to x11 for printing

li x10, 1 # print integer
ecall # display result

li x10, 10 # exit program
ecall # end program

# result is returned in x10
sum:
add x10, x10, x11 # x10 = a + b
jalr x0, 0(x1) # return from function