.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data                           ; data segment
    alpha   db  48+5            ; initializing alpha to be 5
    beta    db  48+3            ; initializing beta to be 3
     
.code                           ; code segment
          
          
    MOV dl, alpha               ; move alpha into @dl
    MOV ah, 2                   ; function for printing
    INT 21h                     ; DOS interrupt
                                
    MOV dl, beta                ; move beta into @dl
    MOV ah, 2                   ; function for printing
    INT 21h                     ; DOS interrupt
 
    MOV ah, 4ch                 ; function to terminate
    INT 21h                     ; DOS interrupt
    
    
END                             ; End Program

; Here we added 48 to alpha and beta to turn them into decimal numbers
; See ascii codes...
