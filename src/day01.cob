       identification division.
       program-id. day01.

       environment division.
       
       data division.
       working-storage section.
       01 WS-NAME PIC X(10) VALUE "Aliff".
       01 WS-AGE PIC 99 VALUE 28.


       procedure division.

           display "Hello my name is " WS-NAME.
           display "I am " WS-AGE.
           stop run.

