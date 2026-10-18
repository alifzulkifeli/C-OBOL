
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DAY15.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT EMPLOYEE-FILE
               ASSIGN TO "employees.dat"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.

       FD EMPLOYEE-FILE.
       01 EMPLOYEE-RECORD.
           05 EMP-ID       PIC 9(4).
           05 EMP-NAME     PIC X(20).
           05 EMP-SALARY   PIC 9(5).

       WORKING-STORAGE SECTION.
       01 WS-FILE-STATUS PIC XX.
       01 WS-EOF PIC X VALUE "N".
           88 END-OF-FILE VALUE "Y".
       01 WS-TOTAL-SALARY PIC 9(8) VALUE ZERO.

       PROCEDURE DIVISION.

           OPEN INPUT EMPLOYEE-FILE

           IF WS-FILE-STATUS NOT = "00"
               DISPLAY "ERROR OPENING FILE: "
                       WS-FILE-STATUS
               GOBACK
           END-IF

           PERFORM UNTIL END-OF-FILE
               READ EMPLOYEE-FILE
                   AT END
                       SET END-OF-FILE TO TRUE
                   NOT AT END
                       DISPLAY "ID     : " EMP-ID
                       DISPLAY "NAME   : " EMP-NAME
                       DISPLAY "SALARY : " EMP-SALARY
                       DISPLAY "----------------------"
                       ADD EMP-SALARY TO WS-TOTAL-SALARY
               END-READ
           END-PERFORM

           CLOSE EMPLOYEE-FILE
           DISPLAY "TOTAL SALARY: " WS-TOTAL-SALARY

           GOBACK.
