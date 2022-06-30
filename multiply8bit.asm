.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    alpha   DB  2
    beta    DB  3
    zeta    DB  4     
    
     
.code                           ; code segment
    MOV al, alpha               ; move value $alpha to @al
    MOV bl, beta                ; move Value $beta to @bl
    MUL bl                      ; multiply bl with al and store it in @al
    ADD al, 48                  ; add 48 to al to represent the value @al in numerical format
    
    MOV dl, al                  ; move the value @al into @dl
    MOV ah, 2h                  ; function to print the value @dl
    INT 21h                     ; DOS interrupt
                                
    MOV al, alpha               ; move value $alpha into @al
    MOV cl, zeta                ; move value $zeta into @cl
    MUL cl                      ; multiply cl with al and store it in @al
    ADD al, 48                  ; add 48 to al to represent the value @al in numerical format
    
    MOV dl, al                  ; move al into dl
    MOV ah, 2h                  ; function to print the value @dl
    INT 21h                     ; DOS interrupt
    
    MOV ah, 4ch                 ; function to terminate
    INT 21h                     ; DOS interrupt

END                             ; End Program


; MUL multiples the argument with al and stores it in al
      
