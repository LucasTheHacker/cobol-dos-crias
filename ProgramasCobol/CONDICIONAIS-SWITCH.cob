       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CONDICIONAIS-SWITCH.
       AUTHOR. Arthur. 
      *****************************************************************
      * Autor: Tutu
      * Data: 07/01/2025
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
       77 WRK-MEDIA       PIC 9(02)V9      VALUE ZEROS.
      ******************************************************************
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           COMPUTE WRK-MEDIA = (WRK-NUM1 + WRK-NUM2 ) / 2.
           DISPLAY "NOTA: " WRK-MEDIA.
           EVALUATE TRUE 
              WHEN WRK-MEDIA >= 5
                 DISPLAY "APROVADO"
              WHEN WRK-MEDIA >= 2 AND WRK-MEDIA < 5
                 DISPLAY "RECUPERACAO"
              WHEN OTHER
                 DISPLAY "REPROVADO"           
           END-EVALUATE.
           STOP RUN.
