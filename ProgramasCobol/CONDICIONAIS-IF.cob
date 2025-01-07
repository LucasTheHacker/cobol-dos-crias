       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CONDICIONAIS-IF.
       AUTHOR. Arthur. 
      *****************************************************************
      * Autor: Tutu
      * Data: 24/12/2024
      * Objetivo: CONDICIONAIS
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
       77 WRK-MEDIA       PIC 9(02),9    VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           COMPUTE WRK-MEDIA = (WRK-NUM1 + WRK-NUM2 ) / 2.
           DISPLAY "NOTA: " WRK-MEDIA.
           IF WRK-MEDIA >= 5
              DISPLAY "APROVADO"
           ELSE
              IF WRK-MEDIA >= 2
                 DISPLAY "RECUPERACAO"
              ELSE
                 DISPLAY "REPROVADO"
              END-IF
           END-IF.
           STOP RUN.
