       identification division.
       program-id. day5_2.

       environment division.
       data division.
       working-storage section.
       

       01 WS-EMP-NAME     PIC X(20) VALUE "ALIFF".
       01 WS-SALARY       PIC 9(5) VALUE 6000.
       01 WS-YEARS        PIC 99 VALUE 1.
       01 WS-RATING       PIC X VALUE "c".
       01 WS-BONUS        PIC 9(5) VALUE ZERO.
       01 WS-STATUS       PIC X VALUE "I".
           88 ACTIVE-EMPLOYEE VALUE "A".
           88 INACTIVE-EMPLOYEE VALUE "I".

       procedure division.
           if ACTIVE-EMPLOYEE
               if WS-RATING = "A" AND WS-YEARS >= 5
                  MOVE 2000 TO WS-BONUS
               else
                  if WS-RATING = "A" OR WS-YEARS >= 5
                       MOVE 1000 TO WS-BONUS
                  else

               MOVE 500 TO WS-BONUS
                  end-if
               end-if
           else
               MOVE 0 TO WS-BONUS
               DISPLAY "EMPLOYEE NOT ELIGIBLE"
           end-if.

           DISPLAY "EMPLOYEE " WS-EMP-NAME
           DISPLAY "BONUS    " WS-BONUS
           STOP RUN.
