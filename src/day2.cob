       identification division.
       program-id. day02.

       environment division.

       data division.
       working-storage section.

      *> YOUR VARIABLES HERE
       01 WS-NAME PIC X(20) VALUE "Aliff".
       01 WS-ID PIC 9(6) VALUE 123456.
       01 WS-SALARY PIC S9(5)V99 VALUE 6000.50.


       procedure division.

      *> DISPLAY EMPLOYEE INFORMATION HERE
           DISPLAY "EMPLOYEE INFORMATION".
           DISPLAY "Name   : " WS-NAME. 
           DISPLAY "ID     : " WS-ID.
           DISPLAY "Salary : " WS-SALARY.

           stop run.

