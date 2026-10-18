       identification division.
       program-id. day10.
       environment division.
       data division.
       working-storage section.
           01 WS-JOIN-DATE PIC 9(8) value 20200315.

           01 WS-JOIN-DATE-RED redefines WS-JOIN-DATE.
               03 WS-YEAR   PIC 9(4).
               03 WS-MONTH  PIC 9(2).
               03 WS-DAY    PIC 9(2).
       
       procedure division.
           display "ORIGINAL DATE  :" WS-JOIN-DATE
           display "FORMATTED DATE :" WS-DAY "/" WS-MONTH "/" WS-YEAR
           move 2022 to WS-YEAR
           display "UPDATED DATE   :" WS-JOIN-DATE.

  