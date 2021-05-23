%define SYSCALL_WRITE 1
%define SYSCALL_EXIT  60
%define SYSCALL_READ  0


                global      _start

                section     .data
                message1     db      "Digite o primeiro numero: "
                lenMessage1  equ     $-message1
                message2     db      "Digite o segundo numero: "
                lenMessage2  equ     $-message2 

                section     .bss
                num1        resb 8
                num2        resb 8
                values      resb 8

                section     .text
_start:         mov        rax, SYSCALL_WRITE      
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

_loopStart:       

                mov         rcx,  [num1]
                mov         rsi,  [num2]
                cmp         rcx,  rsi
                jge         _loopEnd
                mov         [values], rcx

_loopBody:       
                mov         rsi, values
                mov         rdx, 8       
                mov         rax, SYSCALL_WRITE                  
                mov         rdi, 1                  
                syscall                             
                
                mov         rsi, [num2]
                mov         rcx, [values]
                inc         rcx
                mov         [values], rcx
                cmp         rcx, rsi
                jg          _loopEnd
                jmp         _loopBody


                
_loopEnd:


                mov         rax, SYSCALL_EXIT       
                xor         rdi, rdi               
                syscall                             


;nasm -felf64 EX01.asm && ld EX01.o && ./a.out 