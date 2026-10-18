       identification division.
       program-id. day5.

       environment division.

       data division.
       working-storage section.
       
           01 WS-AGE PIC 99 VALUE 28.
           01 WS-SALARY PIC 9(6)V99 VALUE 6000.00.
           01 WS-YEARS-SERVICE PIC 99 VALUE 6.

           01 WS-EMPLOYEE-STATUS PIC X VALUE "A".
               88 ACTIVE-EMPLOYEE VALUE "A".
               88 INACTIVE-EMPLOYEE VALUE "I".

           01 WS-GRADE PIC X.
               88 PASSING-GRADE VALUE "A" "B" "C".
               88 FAILING-GRADE VALUE "D" "E" "F".

       procedure division.
       

           DISPLAY "=== AGE CHECK ==="
           IF WS-AGE >= 18
               DISPLAY "ADULT"
           ELSE
               DISPLAY "MINOR"
           END-IF.

           
           DISPLAY "=== EMPLOYEE CHECK ==="
           IF ACTIVE-EMPLOYEE
               IF WS-SALARY >= 5000
                   IF WS-YEARS-SERVICE >= 5
                       DISPLAY "SENIOR EMPLOYEE"
                   ELSE
                       DISPLAY "JUNIOR EMPLOYEE"
                   END-IF
               ELSE
                   DISPLAY "SALARY BELOW 5000"
               END-IF    
           else
               DISPLAY "INACTIVE EMPLOYEE"
           END-IF.

           
           DISPLAY "=== GRADE CHECK ===".

           SET PASSING-GRADE TO TRUE

           IF PASSING-GRADE
               DISPLAY "PASS"
           ELSE
               DISPLAY "FAIL"
           END-IF

           STOP RUN.
