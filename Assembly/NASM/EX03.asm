%define SYSCALL_WRITE 1
%define SYSCALL_EXIT  60
%define SYSCALL_READ  0


                global      _start

                section     .bss
                num1        resb 8
                num2        resb 8

                section     .text
_start:         mov         rax, SYSCALL_WRITE      
                mov         rdi, 1                  
                mov         rsi, message1           
                mov         rdx, lenMessage1        
                syscall                             

                mov         rax, SYSCALL_READ
                mov         rdi, 0                  
                mov         rsi, num1  
                mov         rdx, 8                  
                syscall

                mov         rax, SYSCALL_WRITE      
                mov         rdi, 1                  
                mov         rsi, message2           
                mov         rdx, lenMessage2        
                syscall                             

                mov         rax, SYSCALL_READ
                mov         rdi, 0                  
                mov         rsi, num2  
                mov         rdx, 8                  
                syscall                     

_comparison: 

                mov         rsi,  [num1]
                mov         rcx,  [num2]
                cmp         rsi,  rcx
                jge         _set
                jl         _swap


_set:
                mov         rsi,  num1
                jmp         _end

_swap:       
                mov         rsi,  num2
                jmp         _end


_end:
                mov         rdx, 8        
                mov         rax, SYSCALL_WRITE                  
                mov         rdi, 1                  
                syscall       


                mov         rax, SYSCALL_EXIT       ; syscall for exit
                xor         rdi, rdi                ; exit code 0
                syscall                             ; invoke operating system to exit
    
messages:       section     .data
                message1     db      "Digite o primeiro numero: "
                lenMessage1  equ     $-message1
                message2     db      "Digite o segundo numero: "
                lenMessage2  equ     $-message2 

;nasm -felf64 EX03.asm && ld EX03.o && ./a.out 