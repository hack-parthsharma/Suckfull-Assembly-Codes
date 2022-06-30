.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    alpha   DB  3
    beta    DB  4    
     
.code                           ; code segment
    MOV al, alpha               ; move value $alpha into @al
    MOV bl, beta                ; move value $beta into @bl
    SUB bl, al                  ; sub value @al from value @bl
    ADD bl, 48                  ; add 48 to value @bl to represent it in numerical format 
                                
    MOV dl, bl                  ; move the value @bl into @dl
    MOV ah, 2                   ; function to print
    INT 21h                     ; DOS 

    MOV ah, 4ch                 ; function to exit to system
    INT 21h                     ; DOS interrupt

                            
END                             ; End Program
