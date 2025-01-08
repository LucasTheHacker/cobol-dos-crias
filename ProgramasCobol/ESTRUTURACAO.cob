       IDENTIFICATION DIVISION.
       PROGRAM-ID.  ESTRUTURACAO.
       AUTHOR. Arthur. 
      *****************************************************************
      * Autor: Tutu
      * Data: 08/01/2024
      * Objetivo: ESTRUTURACAO
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
           PERFORM 0001-INICIALIZAR.
           PERFORM 0002-PROCESSAR.
           PERFORM 0003-FINALIZAR.
           STOP RUN.

       0001-INICIALIZAR.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.

       0002-PROCESSAR.
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

       0003-FINALIZAR.
           DISPLAY "Código finalizado".
           
