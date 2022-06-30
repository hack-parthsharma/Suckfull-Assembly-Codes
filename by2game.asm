.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    a db 7
    b db 2
    count db 0
     
.code                           ; code segment
    
    MOV ah, 0
    MOV al, a
    MOV bl, b  
    mov ch, count
    mov bh, al
    jmp divide
    
    divide:
    DIV bl
    INC ch
    CMP ah, 0
    JE  r0
    JNE endcheck
    
    endcheck:
    cmp al, 0 
    je  exit
    jne r1:
      
    r0:
    CMP al, 0
    je  exit
    MOV bh, al
    JMP divide
    
    r1:
    add bh, 1
    dec ch
    mov al, bh 
    mov ah, 0
    mov bh, al
    jmp divide
    
    exit:
    MOV dl, ch
    add dl, 48
    sub dl, 1 
    MOV ah, 2
    INT 21h                        


END                             ; End Program