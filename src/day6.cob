       identification division.
       program-id. day6.

       environment division.
       data division.
       working-storage section.
           

           01 WS-EMP-NAME PIC X(20) VALUE "ALIFF".
           01 WS-SALARY   PIC 9(5) VALUE 6000.
           01 WS-YEARS    PIC 99 VALUE 6.
           01 WS-RATING   PIC X VALUE "A".
           01 WS-BONUS    PIC 9(5) VALUE ZERO.
       
           01 WS-STATUS   PIC X VALUE "A".
               88 ACTIVE-EMPLOYEE   VALUE "A".
               88 INACTIVE-EMPLOYEE VALUE "I".
              
       procedure division.
           EVALUATE TRUE
               WHEN INACTIVE-EMPLOYEE
                   MOVE 0 TO WS-BONUS
               WHEN ACTIVE-EMPLOYEE AND WS-RATING = "A" AND  
                       WS-YEARS >= 5
                   MOVE 2000 TO WS-BONUS
               WHEN (ACTIVE-EMPLOYEE AND WS-RATING = "A") OR 
                       (ACTIVE-EMPLOYEE AND WS-YEARS >= 5)  
                   MOVE 1000 TO WS-BONUS
               WHEN ACTIVE-EMPLOYEE
                   MOVE 500 TO WS-BONUS
               WHEN OTHER
                   DISPLAY " "
           END-EVALUATE.

           DISPLAY "EMPLOYEE: " WS-EMP-NAME
           DISPLAY "RATING  : " WS-RATING
           DISPLAY "YEARS   : " WS-YEARS
           DISPLAY "BONUS   : " WS-BONUS
           STOP RUN.

