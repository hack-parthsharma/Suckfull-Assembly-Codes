.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    a db 6
    b db 7
    lcm db ?
     
.code                           ; code segment
    
    MOV ah, 0
    MOV al, a
    MOV bl, b
    mov bh, al
    DIV bl
    CMP ah, 0
    JE  exit
    JNE l1
    
    l1:
    MOV ah, 0
    MOV al, bh
    ADD al, a                   ; DAA can be done, but it gives a lil problem
    MOV bh, al
    DIV bl
    CMP ah, 0
    JE  exit
    JNE l1
    
    exit:
    MOV lcm, bh
    MOV dl, bh  
     
    ; ADD dl, 48
    
    MOV ah, 2
    INT 21h                        

END                             ; End Program