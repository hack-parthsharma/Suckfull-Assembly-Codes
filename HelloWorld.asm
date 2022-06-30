.model tiny                     ; type of the coding language is tiny


org 100h                        ; sode starts from offset 100h
.data
    message DB "Hello World! $" ; Message to be displayed   
    

.code                           ; code segment


    MOV ah, 09h                 ; function to display a string
    MOV dx, offset message      ; offset of the Message string terminating with $
    int 21h                     ; DOS interrupt
    
    MOV ah, 4ch                 ; funtion to terminate
    MOV al, 00                  
    int 21h                     ; DOS interrupt
    


END                             ; End Program