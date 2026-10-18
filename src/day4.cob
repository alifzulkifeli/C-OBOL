       identification division.
       program-id. day4.
       environment division.
       data division.
       working-storage section.
       01 WS-BASIC-SALARY PIC 9(6)V99 VALUE 5000.00.
       01 WS-ALLOWANCE    PIC 9(6)V99 VALUE 500.00.
       01 WS-OVERTIME     PIC 9(6)V99 VALUE 300.00.
       01 WS-TAX          PIC 9(6)V99 VALUE 400.00.
       01 WS-GROSS        PIC 9(6)V99.
       01 WS-NET          PIC 9(6)V99.
       01 WS-ANNUAL       PIC 9(7)V99.
       01 WS-MONTHLY-SAVING PIC 9(5)V99 VALUE 800.00.
       01 WS-YEARS          PIC 99 VALUE 3.
       01 WS-MONTHS         PIC 999.
       01 WS-TOTAL-SAVING   PIC 9(7)V99.
       01 WS-AVG-MONTHLY    PIC 9(7)V99.

       procedure division.
           compute WS-GROSS = WS-BASIC-SALARY + WS-ALLOWANCE 
               + WS-OVERTIME.
           subtract WS-TAX FROM WS-GROSS giving WS-NET.
           multiply WS-NET by 12 giving WS-ANNUAL.


           multiply WS-YEARS by 12 giving WS-MONTHS.
           multiply WS-MONTHS by WS-MONTHLY-SAVING giving 
               WS-TOTAL-SAVING.
           add 200 to WS-TOTAL-SAVING.
           divide WS-TOTAL-SAVING by WS-MONTHS 
               giving WS-AVG-MONTHLY rounded

           


           DISPLAY "===== SALARY CALCULATOR ====="
           DISPLAY "BASIC SALARY    : " WS-BASIC-SALARY
           DISPLAY "ALLOWANCE       : " WS-ALLOWANCE
           DISPLAY "OVERTIME        : " WS-OVERTIME
           DISPLAY "GROSS SALARY    : " WS-GROSS
           DISPLAY "TAX             : " WS-TAX
           DISPLAY "NET SALARY      : " WS-NET
           DISPLAY "ANNUAL          : " WS-ANNUAL
           DISPLAY "WS-TOTAL-SAVING : " WS-TOTAL-SAVING
           DISPLAY "WS-AVG-MONTHLY  : " WS-AVG-MONTHLY
           DISPLAY "=============================: ".

           stop run.

