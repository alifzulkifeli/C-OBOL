       IDENTIFICATION DIVISION.
       PROGRAM-ID. day13.
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-EMPLOYEE-TABLE.
           03 WS-EMPLOYEE OCCURS 20 TIMES 
               ASCENDING KEY IS WS-EMP-ID
               INDEXED BY EMP-IDX.
               10 WS-EMP-ID     PIC 99.
               10 WS-EMP-NAME   PIC X(20).
               10 WS-EMP-SALARY PIC 9(5).
       01 WS-COUNT PIC 99.
       01 WS-SEARCH-ID PIC 99 VALUE 17.

       PROCEDURE DIVISION.
           PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 20
               MOVE WS-COUNT TO WS-EMP-ID(WS-COUNT)
               MOVE WS-COUNT TO WS-EMP-NAME(WS-COUNT)
               COMPUTE WS-EMP-SALARY(WS-COUNT)
                   = 5000 + (WS-COUNT * 100)
           END-PERFORM


           SEARCH ALL WS-EMPLOYEE
               AT END
                   DISPLAY "NOT FOUND"
               WHEN WS-EMP-ID(EMP-IDX) = WS-SEARCH-ID
                   DISPLAY "EMPLOYEE FOUND"
                   DISPLAY "ID     : " WS-EMP-ID(EMP-IDX)
                   DISPLAY "NAME   : EMPLOYEE-" WS-EMP-NAME(EMP-IDX)
                   DISPLAY "SALARY : " WS-EMP-SALARY(EMP-IDX)
           END-SEARCH.
       STOP RUN.
