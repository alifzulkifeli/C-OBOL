       IDENTIFICATION DIVISION.
       PROGRAM-ID. day17.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INPUT-FILE
               ASSIGN TO "employees.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-INPUT-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.

       FD INPUT-FILE.
       01 EMPLOYEE-RECORD.
           03 EMP-ID PIC 9(5).
           03 EMP-NAME PIC X(20).
           03 EMP-SALARY PIC 9(5).

       WORKING-STORAGE SECTION.
           01 WS-INPUT-FILE-STATUS PIC XX.
           01 WS-EOF PIC X VALUE "N".
               88 END-OF-FILE VALUE  "Y".
           01 WS-TOTAL-SALARY PIC 9(5).
           01 WS-TOTAL-EMPLOYEE PIC 99.


       PROCEDURE DIVISION.
           OPEN INPUT INPUT-FILE

           IF WS-INPUT-FILE-STATUS NOT = "00"
               CLOSE INPUT-FILE
               STOP RUN
           END-IF
       
           PERFORM UNTIL END-OF-FILE
               READ INPUT-FILE
                   AT END
                       SET END-OF-FILE TO TRUE
                   NOT AT END
                       DISPLAY "ID     : " EMP-ID
                       DISPLAY "NAME   : " EMP-NAME
                       DISPLAY "SALARY : " EMP-SALARY
                       DISPLAY "---------------------------"
                       ADD EMP-SALARY TO WS-TOTAL-SALARY
                       ADD 1 TO WS-TOTAL-EMPLOYEE
               END-READ
           END-PERFORM.
           DISPLAY "---------------------------"
           DISPLAY "TOTAL EMPLOYEES : " WS-TOTAL-EMPLOYEE
           DISPLAY "TOTAL SALARY    : " WS-TOTAL-SALARY
           DISPLAY "---------------------------"
           CLOSE  INPUT-FILE.
           STOP RUN.
       
      