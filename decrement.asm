.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data

.code                           ; code segment
    MOV dl, 3                   ; storing data 3 in @dl 
    ADD dl, 48                  ; adding 48 to represent it in numerical format
    
    MOV ah, 2h                  ; function for printing
    INT 21h                     ; DOS interrupt
     
    DEC dl                      ; decrement @dl by 1
    
                                
    MOV ah, 2h                  ; function for printing 
    INT 21h                     ; DOS interrupt
                                
    MOV ah, 4ch                 ; function for terminating program
    INT 21h                     ; DOS interrupt
     
                            

END                             ; End Program
