.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
    alpha   DB  3
    beta    DB  4    
     
.code                           ; code segment
    MOV al, alpha               ; move value $alpha into @al
    MOV bl, beta                ; move value $beta into @bl
    ADD bl, al                  ; add @bl and @al, and store into @bl
    ADD bl, 48                  ; add 48 to @bl to represent the value in @bl in numerical format
    
    MOV dl, bl                  ; move the value @bl into @dl
    MOV ah, 2                   ; function to print value @dl
    INT 21h                     ; DOS inturrupt

    MOV ah, 4ch                 ; funtion to terminate
    int 21h                     ; DOS interrupt
                           

END                             ; End Program
