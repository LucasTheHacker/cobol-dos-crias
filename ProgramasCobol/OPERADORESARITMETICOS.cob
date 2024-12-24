       IDENTIFICATION DIVISION.
       PROGRAM-ID.  PROGCOB05.
       AUTHOR. Arthur. 
      *****************************************************************
      * Autor: Tutu
      * Data: 24/12/2024
      * Objetivo: OPERACOES ARITMETICAS
      ******************************************************
      *****************************************************************
       ENVIRONMENT DIVISION. 
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *****************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1        PIC 9(02)      VALUE ZEROS.
       77 WRK-NUM2        PIC 9(02)      VALUE ZEROS.
       77 WRK-RESULT      PIC S9(04)     VALUE ZEROS.
       77 WRK-RESTO       PIC 9(02)      VALUE ZEROS.
       77 WRK-RESULT-ED   PIC -ZZZ9,99   VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT.
           DISPLAY 'NUM1: ' WRK-NUM1 ' NUM2: ' WRK-NUM2.

           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'SOMA: ' WRK-RESULT-ED.
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESULT.

           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESULT-ED.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT REMAINDER 
           WRK-RESTO.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'DIVISAO: ' WRK-RESULT-ED ' RESTO: ' WRK-RESTO.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
           MOVE WRK-RESULT TO WRK-RESULT-ED.
           DISPLAY 'MULTIPLICACAO: ' WRK-RESULT-ED.
           STOP RUN.
