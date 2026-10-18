       IDENTIFICATION DIVISION.
       PROGRAM-ID. DAY12.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WS-EMPLOYEE-TABLE.
           05 WS-EMPLOYEE OCCURS 20 TIMES INDEXED BY EMP-IDX.
               10 WS-EMP-ID     PIC 99.
               10 WS-EMP-NAME   PIC X(20).
               10 WS-EMP-SALARY PIC 9(5).
       01 WS-TOTAL-SALARY PIC 9(8) VALUE ZERO.
       01 WS-COUNT PIC 99.

       PROCEDURE DIVISION.
           PERFORM VARYING EMP-IDX FROM 1 BY 1 UNTIL EMP-IDX > 20


               SET WS-COUNT TO EMP-IDX

               MOVE WS-COUNT TO WS-EMP-ID(EMP-IDX)
               MOVE WS-COUNT TO WS-EMP-NAME(EMP-IDX)

               COMPUTE WS-EMP-SALARY(EMP-IDX) = 
                   WS-COUNT * 100 + 5000

               DISPLAY "Employee : " WS-EMP-ID(EMP-IDX)
               DISPLAY "Name     : EMPLOYEE-" WS-EMP-ID(EMP-IDX)
               DISPLAY "Salary   : " WS-EMP-SALARY(EMP-IDX)
               DISPLAY " "
               ADD WS-EMP-SALARY(EMP-IDX) TO WS-TOTAL-SALARY
           
           END-PERFORM.
           DISPLAY "TOTAL SALARY: " WS-TOTAL-SALARY
           STOP RUN.



