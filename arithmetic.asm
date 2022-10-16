# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
# Program prompts user for 2 inputs (x and y), calculates and prints out 
# 16*(x-y)+8. No mult instruction, shift.

.text
main:
    li $v0 5
    syscall
    move $t0 $v0

    li $v0 5
    syscall
    move $t1 $v0

    sub $t2 $t0 $t1
    sll $t3 $t2 4
    addi $t4 $t3 8 

    li $v0 1
    move $a0 $t4
    syscall
    j exit

exit:
    li $v0 10
    syscall
