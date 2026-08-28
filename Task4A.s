main:

    li x10, 0x78786464 # Loads 0x78786464 into register x10 
    li x11, 0xA8A8191 # Loads 0xA8A8191 into register x11 

    sw x10, 0x100(x0) # Store x10 at memory address 0x100
    sw x11, 0x1F0(x0) # Store x11 at memory address 0x1F0

    lhu x12, 0x100(x0) # Load value from memory address 0x100 into x12
    lh x13, 0x1F0(x0) # Load value from memory address 0x1F0 into x13

    lb x14, 0x1F0(x0) # Load byte from memory address 0x1F0 into x14

end:
    j end # Infinite loop to end the program