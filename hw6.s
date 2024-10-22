# helloWorld.s
# Hello World program using the write() system call

        .intel_syntax noprefix
# Useful constant
       .equ    STDOUT, 1
        
# Constant data
       .section  .rodata
message:
        .string "Hello, World!\n"
        .equ    msgLength, .-message-1

# Code
        .text
        .globl  main
        .type   main, @function
main:
        push rbp
        mov rbp, rsp

        push rbx        #save register contents to stack to preserve data
        push r12
        push r13
        push r14

        mov r12w, 0xdcba
        mov r13w, 0x4321
        add r12b, r13b

        move ebx, idk
        mov r14d, 24
        add r14d, ebx




        mov     eax, 0          # return 0

        pop     rbp             # restore caller frame pointer
        ret                     # back to caller