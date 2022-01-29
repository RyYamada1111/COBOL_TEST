      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           01 WORK.
               03 WORK-1.
                   05 WORK_NUM-1   PIC 9(3).
                   05 WORK_NUM-2   PIC 9(3).
                   05 WORK_SUM     PIC 9(3).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 100 TO WORK_NUM-1.
           MOVE 200 TO WORK_NUM-2.

           ADD WORK_NUM-1 WORK_NUM-2 TO WORK_SUM.


            DISPLAY "TOTAL:"WORK_SUM.
            DISPLAY "TOTAL:"WORK_NUM-1.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
