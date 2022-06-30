.model small                    ; type of the code


org 100h                        ; sode starts from offset 100h
.data
     
     
.code                           ; code segment
          
          
    MOV ah, 1h                  ; function for read character and store it @al                  
    INT 21h                     ; DOS interrupt
    
    MOV dl, al                  ; move the value @al into @dl

    MOV ah, 2h                  ; function for print character
    INT 21h                     ; DOS interrupt
              
    MOV ah, 1h                  ; function for read character and store it @al
    INT 21h                     ; DOS interrupt
    
    MOV dl, al                  ; move the value @al into @dl
         
    MOV ah, 2h                  ; function for print character
    INT 21h                     ; DOS interrupt 

    MOV ah, 4ch                 ; funtion to terminate
    int 21h                     ; DOS interrupt
 END                            ; End Program