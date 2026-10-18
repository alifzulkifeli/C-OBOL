       IDENTIFICATION DIVISION.
       PROGRAM-ID. DAY16.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.

           SELECT INPUT-FILE
               ASSIGN TO "employees.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-INPUT-FILE-STATUS.

           SELECT OUTPUT-FILE
               ASSIGN TO "employee-output.txt"
               ORGANIZATION IS LINE SEQUENTIAL
               FILE STATUS IS WS-OUTPUT-FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.

           FD INPUT-FILE.
           01 EMPLOYEE-DATA.
               03 EMPLOYEE-ID     PIC 9(5).
               03 EMPLOYEE-NAME   PIC X(20).
               03 EMPLOYEE-SALARY PIC 9(5).

           FD OUTPUT-FILE.
           01 OUTPUT-RECORDS PIC X(40).

       WORKING-STORAGE SECTION.
           
           01 WS-INPUT-FILE-STATUS PIC XX.
           01 WS-OUTPUT-FILE-STATUS PIC XX.

           01 WS-EOF PIC X VALUE "N".
               88 END-OF-FILE VALUE  "Y".
           
           01 WS-EMP-COUNTER PIC 99.
           

       PROCEDURE DIVISION.

           OPEN INPUT INPUT-FILE.


           *> IF missing, DISPLAY ERROR AND STOP
           IF WS-INPUT-FILE-STATUS NOT = "00"
               DISPLAY "ERROR OPENING FILE: "  WS-INPUT-FILE-STATUS
               STOP RUN
           END-IF

           OPEN OUTPUT OUTPUT-FILE.

           IF WS-OUTPUT-FILE-STATUS NOT = "00"
               DISPLAY "ERROR OPENING FILE: "  WS-OUTPUT-FILE-STATUS
               STOP RUN
           END-IF
           
           


           PERFORM UNTIL END-OF-FILE
               READ INPUT-FILE 
                   AT END
                       SET END-OF-FILE TO TRUE
                   NOT AT END
                       DISPLAY "ID     : " EMPLOYEE-ID
                       DISPLAY "NAME   : " EMPLOYEE-NAME
                       DISPLAY "SALARY : " EMPLOYEE-SALARY
                       DISPLAY " "
                       MOVE EMPLOYEE-DATA TO OUTPUT-RECORDS
                       WRITE OUTPUT-RECORDS
                       ADD 1 TO WS-EMP-COUNTER
               END-READ
           END-PERFORM 

           CLOSE INPUT-FILE
           CLOSE OUTPUT-FILE

           DISPLAY "TOTAL EMPLOYEES PROCESSED: " WS-EMP-COUNTER

           *> EXTRA
           OPEN EXTEND OUTPUT-FILE

           IF WS-OUTPUT-FILE-STATUS NOT = "00"
               DISPLAY "ERROR OPENING FILE: "  WS-OUTPUT-FILE-STATUS
               STOP RUN
           END-IF

           MOVE "ALIFF" TO EMPLOYEE-NAME
           MOVE 4 TO EMPLOYEE-ID
           MOVE 25000 TO EMPLOYEE-SALARY
           MOVE EMPLOYEE-DATA TO OUTPUT-RECORDS
           WRITE OUTPUT-RECORDS
           CLOSE OUTPUT-FILE


           STOP RUN.

