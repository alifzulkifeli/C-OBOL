       identification division.
       program-id. day9.
       environment division.
       data division.
       working-storage section.
           01 WS-EMP-NAME PIC X(20) VALUE "ALIFF".
           01 WS-SALARY PIC 9(5) VALUE 6000.
           01 WS-STATUS PIC X VALUE "A".
               88 ACTIVE-EMPLOYEE VALUE "A".
               88 INACTIVE-EMPLOYEE VALUE "I".
               88 SUSPENDED-EMPLOYEE VALUE "S".
           01 WS-BONUS PIC S9(6)V99.

       procedure division.
           perform PROCCESS-EMPLOYEE
           SET SUSPENDED-EMPLOYEE TO TRUE
           perform PROCCESS-EMPLOYEE

           stop run.

       PROCCESS-EMPLOYEE.
           evaluate true
               when ACTIVE-EMPLOYEE
                   Compute  WS-BONUS = WS-SALARY / 10
               when INACTIVE-EMPLOYEE
                   move 0 to WS-BONUS
               when SUSPENDED-EMPLOYEE
                   move 0 to WS-BONUS
                   end-evaluate
               display "Name   : " WS-EMP-NAME
               display "Status : " WS-STATUS
               display "Bonus  : " WS-BONUS

               if SUSPENDED-EMPLOYEE
                  display "ACCOUNT UNDER REVIEW"
               end-if.
