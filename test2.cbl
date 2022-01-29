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
           01 WORK-AREA.
               03 WORK OCCURS 5.
                   05 WORK-1   PIC 9(3).
                   05 WORK-2   PIC 9(3).
               03 WORK-SUM.
                   05 WORK-SUM-1     PIC 9(6).
                   05 WORK-SUM-2     PIC 9(6).
               03 IND PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM VARYING IND FROM 1 BY 1
           UNTIL IND > 5
              MOVE 100 TO WORK-1(IND)
              DISPLAY "WORK-1("IND")" WORK-1(IND)
           END-PERFORM

           PERFORM VARYING IND FROM 1 BY 1
           UNTIL IND > 5
              ADD WORK-1(IND) TO WORK-SUM-1
              DISPLAY "WORK-SUM-1("IND")" WORK-SUM-1
           END-PERFORM

           PERFORM VARYING IND FROM 1 BY 1
           UNTIL IND > 5
              COMPUTE WORK-2(IND) = IND * 100
              ADD WORK-2(IND) TO WORK-SUM-2
       *>  データ項目の桁オーバーすると０になる
              DISPLAY "WORK-2("IND")" WORK-2(IND)
              DISPLAY "WORK-SUM-2("IND")" WORK-SUM-2
           END-PERFORM


           DISPLAY "TOTAL1:"WORK-SUM-1.
           DISPLAY "TOTAL2:"WORK-SUM-2.
           STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
