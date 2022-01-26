
    ORG    $1000
START:                  
    LEA HEALTH, A2
    MOVE.B (HEALTH), D1
    
    MOVE.B #3, D0
    TRAP #15
    
    ADD #5, D1
    
    MOVE.B #3, D0
    TRAP #15
    
    SUB #5, D1
    
    MOVE.B #3, D0
    TRAP #15
    
    MULU.W #2, D1
    
    MOVE.B #3, D0
    TRAP #15
    
    DIVU.W #2, D1
    
    MOVE.B #3, D0
    TRAP #15
    
    SIMHALT             
HEALTH dc.b $10, 0
    END    START 

*~Font name~Courier New~
*~Font size~16~
*~Tab type~1~
*~Tab size~4~
