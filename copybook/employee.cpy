       01 EMPLOYEE-RECORD.
           05 EMP-ID          PIC 9(5).
           05 EMP-NAME.
               10 EMP-FIRST   PIC X(10).
               10 EMP-LAST    PIC X(10).
           05 EMP-DEPARTMENT  PIC X(10).
           05 EMP-JOIN-DATE   PIC X(8).
           05 EMP-JOIN-DATE-RED REDEFINES EMP-JOIN-DATE.
               10 EMP-YEAR    PIC X(4).
               10 EMP-MONTH   PIC X(2).
               10 EMP-DAY     PIC X(2).
           
           05 EMP-SALARY      PIC 9(7)V99.
           66 EMP-FULLNAME RENAMES EMP-FIRST THRU EMP-LAST.
        