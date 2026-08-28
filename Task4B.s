main:

# First Iteration Of The Loop:
lb x1, 0x100(x0) # Load 1 byte integer from address 0x100 into x1
lh x2, 0x200(x0) # Load 2 byte integer from address 0x200 into x2
add x3, x1, x2 # Add x1 and x2, save the sum in x3
sw x3, 0x300(x0) # Save the 4 byte result from x3 to address 0x300

# Second Iteration Of The Loop:
lb x1, 0x101(x0) # Load next byte from address 0x101 into x1
lh x2, 0x202(x0) # Load next 2 byte value from address 0x202 into x2
add x3, x1, x2 # Add x1 and x2, save the sum in x3
sw x3, 0x304(x0) # Save the result to address 0x304

# Third Iteration Of The Loop:
lb x1, 0x102(x0) # Load third byte from address 0x102 into x1
lh x2, 0x204(x0) # Load third 2 byte value from address 0x204 into x2
add x3, x1, x2 # Add x1 and x2, save the sum in x3
sw x3, 0x308(x0) # Save the result to address 0x308

# Fourth Iteration Of The Loop:
lb x1, 0x103(x0) # Load fourth byte from address 0x103 into x1
lh x2, 0x206(x0) # Load fourth 2-byte value from address 0x206 into x2
add x3, x1, x2 # Add x1 and x2, save the sum in x3
sw x3, 0x30C(x0) # Save the final result to address 0x30C

end:
    j end # Infinite loop to end the program