       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVELNIVEL88.
      ***************************************************
      * AUTHOR = ARTHUR
      * DATA = 07/01/2025
      * VARIAVEIS LOGICAS (88)
      ***************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.  
       77  WRK-NOME   PIC X(20) VALUE SPACES.
       77  WRK-ACESSO PIC 9(1)  VALUE ZEROS.
           88 ADM     VALUE 01.
           88 USER    VALUE 02.
      *************************************************** 
       PROCEDURE DIVISION.
           DISPLAY "Digite o nome"
           ACCEPT WRK-NOME FROM CONSOLE.   
           DISPLAY "Digite o nivel de acesso"
           ACCEPT WRK-ACESSO FROM CONSOLE.
           IF ADM IN WRK-ACESSO 
              DISPLAY "ADM"
           ELSE 
              IF USER IN WRK-ACESSO 
                 DISPLAY "USER" 
              ELSE
                 DISPLAY "ACESSO NAO IDENTIFICADO"
              END-IF 
           END-IF.   
           STOP RUN.
