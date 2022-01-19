
    ORG    $1000
START:               

    LEA text, A1 //Loads text into A1
    
    MOVE #14,D0 
    TRAP #15 // Displays String at A1
    MOVE #4,D0
    TRAP #15 // Reads number from keyboard
    
    LEA text2, A1 //Loads text2 into A1
    
    Move #14, D0
    TRAP #15
    
    MOVE #3,D0
    TRAP #15 // Outputs number at D1
    

  
    SIMHALT      
text dc.b 'Enter Game Points: ',0
text2 dc.b 'Players Total Game Points: ',0
    END    START      


*~Font name~Courier New~
*~Font size~18~
*~Tab type~1~
*~Tab size~4~
