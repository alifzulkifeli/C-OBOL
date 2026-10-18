
       identification division.
       program-id. day3.
       
       environment division.
       
       data division.
       working-storage section.

       01 WS-NAME        PIC X(10) VALUE "ALIFF".
       01 WS-COPY-NAME   PIC X(10).
       
       PROCEDURE DIVISION.
       
           MOVE WS-NAME TO WS-COPY-NAME.
       
           DISPLAY "NAME      : [" WS-NAME "]".
           DISPLAY "COPY NAME : [" WS-COPY-NAME "]".
       
           STOP RUN.
