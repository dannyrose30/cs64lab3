# hello.asm
# A "Hello World" program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
    prompt: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:
    li $v0 4
    la $a0 prompt
    syscall

    li $v0 5
    syscall
    move $t0 $v0

    li $t1 1
    and $t2 $t1 $t0

    beq $t2 $t1, odd

even:
    li $t3 3
    mult $t0 $t3
    mflo $t4
    j print
odd:
    li $t3 2
    mult $t0 $t3
    mflo $t4

print: 
    li $v0 1
    move $a0 $t4
    syscall
    j exit

exit:
    li $v0 10
    syscall
