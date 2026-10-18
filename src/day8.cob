       IDENTIFICATION DIVISION.
       PROGRAM-ID. DAY8.
       environment division.
       data division.
           working-storage section.
       
           01 CUSTOMER-RECORD.
                  03 WS-CUSTOMER-ID PIC 9(6) VALUE 123456.
                  03 WS-NAME.
                      05 WS-FIRST-NAME PIC X(15) VALUE "ALIFF".
                      05 WS-LAST-NAME PIC X(15) VALUE "AIMAN".
                  03 WS-ADRESS.
                      05 WS-STREET PIC X(25) VALUE "27 CASA RIA".
                      05 WS-CITY PIC X(15) VALUE "KL".
                      05 WS-POSTCODE PIC 9(5) VALUE 55100.
                  03 WS-ACCOUNT.
                      05 WS-ACCOUNT-NO PIC 9(10) VALUE 67985232.
                      05 WS-BALANCE PIC S9(7)V99 VALUE 875613.99.
           77 WS-COUNT PIC 99 VALUE ZERO.

           01 BACKUP-RECORD.
                  03 BK-CUSTOMER-ID PIC 9(6).
                  03 BK-NAME.
                      05 BK-FIRST-NAME PIC X(15).
                      05 BK-LAST-NAME PIC X(15).
                  03 BK-ADRESS.
                      05 BK-STREET PIC X(25).
                      05 BK-CITY PIC X(15).
                      05 BK-POSTCODE PIC 9(5).
                  03 BK-ACCOUNT.
                      05 BK-ACCOUNT-NO PIC 9(10).
                      05 BK-BALANCE PIC S9(7)V99.

       procedure division.

           MOVE CUSTOMER-RECORD TO BACKUP-RECORD.


           DISPLAY "Customer ID: " WS-CUSTOMER-ID.
           DISPLAY "Customer Name: " WS-FIRST-NAME " " WS-LAST-NAME.
           DISPLAY "Customer Address: " WS-STREET ", " WS-CITY ", " 
                   WS-POSTCODE.
           DISPLAY "Customer Account No: " WS-ACCOUNT-NO.
           DISPLAY "Customer Balance: " WS-BALANCE.

           DISPLAY "Backup Customer ID: " BK-CUSTOMER-ID.
           DISPLAY "Backup Customer Name: " BK-FIRST-NAME " " 
                   BK-LAST-NAME.
           DISPLAY "Backup Customer Address: " BK-STREET ", " 
                   BK-CITY ", " BK-POSTCODE.
           DISPLAY "Backup Customer Account No: " BK-ACCOUNT-NO.
           DISPLAY "Backup Customer Balance: " BK-BALANCE.


              STOP RUN.

1. What is normally represented by level 01?
       GROUP ITEM
2. What does the hierarchy below mean?
       customer and name is group item where the child first name is elemntary item
   01 CUSTOMER.
      05 NAME.
         10 FIRST-NAME PIC X(10).

3. Is NAME a group item or elementary item?
       group item
4. Is FIRST-NAME a group item or elementary item?
       elementary item
5. What is special about level 77?
       it cannot have children
6. Can a 77-level item contain a 05-level item?
       no
7. Does a group item normally have a PIC clause?
       no
8. What happens when:
   MOVE CUSTOMER-A TO CUSTOMER-B
       a group move ocurrs. the data will be moved
9. During a group MOVE, does COBOL move corresponding
   elementary fields individually?
       no
10. Why are group items useful in business programs?
       able to move data in groups rather than individually
