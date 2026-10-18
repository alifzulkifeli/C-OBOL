       identification division.
       program-id. day7.
       environment division.
       data division.
       working-storage section.
       
       01 WS-EMP-NUMBER PIC 99.
       01 WS-SALARY     PIC 9(5).
       01 WS-BONUS      PIC 9(5).
       01 WS-COUNT      PIC 99.
       01 WS-TOTAL-BONUS PIC 9(7) VALUE ZERO.

       procedure division.

           perform varying WS-COUNT
            from 1 by 1
            until WS-COUNT >10
               perform PROCESS-EMPLOYEE
               perform DISPLAY-EMPLOYEE
           end-perform.
           
           DISPLAY "TOTAL BONUS: " WS-TOTAL-BONUS

           stop run.

       PROCESS-EMPLOYEE.
           move WS-COUNT to WS-EMP-NUMBER
           move 5000 to WS-SALARY
           IF WS-EMP-NUMBER > 5
               compute WS-BONUS = WS-SALARY * 0.15
           else
               compute WS-BONUS = WS-SALARY * 0.1
           end-if
           ADD WS-BONUS TO WS-TOTAL-BONUS.
           
       DISPLAY-EMPLOYEE.
           display "EMPLOYEE: " WS-EMP-NUMBER
           display "SALARY  : " WS-SALARY
           display "BONUS   : " WS-BONUS
           display "--------------------".

