.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    a db 21
    b db 2
    dcount db 0
    acount db 0
     
.code                           ; code segment
    
    MOV ah, 0
    MOV al, a
    MOV bl, b  
    mov ch, dcount
    mov cl, acount
    mov bh, al
    jmp divide
    
    divide:
    DIV bl
    INC ch
    CMP ah, 0
    JE  endcheck
    jne r1
    
    endcheck:
    cmp al, 1 
    je  exit
    jne r0
      
    r0:
    CMP al, 0
    je  exit
    MOV bh, al
    JMP divide
    
    r1:
    add bh, 1
    inc cl
    dec ch
    mov al, bh 
    mov ah, 0
    mov bh, al
    jmp divide
    
    exit:
    MOV dl, ch
    add dl, 48 
    MOV ah, 2
    INT 21h   
    
    
    MOV dl, cl
    add dl, 48 
    MOV ah, 2
    INT 21h   
    
    
                         


END                             ; End Program