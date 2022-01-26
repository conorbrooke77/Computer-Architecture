
    ORG    $1000
START:
    MOVE.B #2, D0 // Read string from keyboard and store at (A1)
    TRAP #15

    MOVE.B #5, D0 // Read single character from the keyboad store at d1
    TRAP #15
    
    MOVE.B #8, D0 // Return time in hundredths of a second since midnight in D1
    TRAP #15
    
    MOVE.B #11, D0 // Position the cursor at ROW, COL
    TRAP #15
    
    LEA MESSAGE, A1
    MOVE.B #13, D0 // Displays string at A1
    TRAP #15
    
    MOVE.B #17, D0 //  Combination of Trap codes 14 & 3
    TRAP #15
    
    MOVE.B #18, D0 //  Combination of Trap codes 14 & 4
    TRAP #15
    
    MOVE.B #21, D0 //  	 Set Font Color
    TRAP #15
    SIMHALT        

MESSAGE dc.b 'hello', 0
    END    START      

*~Font name~Courier New~
*~Font size~16~
*~Tab type~1~
*~Tab size~4~
