       IDENTIFICATION DIVISION.
       PROGRAM-ID. MASCARACPF.
      ***************************************************
      * AUTHOR = BATISTA
      * DATA = 23/12/2024
      * Variáveis Estruturadas (Tipo 01-49)
      ***************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.

       WORKING-STORAGE SECTION. 
       77  WRK-CPF PIC 9(11) VALUE ZEROS.
       77  WRK-CPF-MASK PIC ZZZ.ZZZ.ZZ9/99 VALUE ZEROS.
       
       PROCEDURE DIVISION.
           DISPLAY 'Digite o seu CPF: '.
           ACCEPT WRK-CPF FROM CONSOLE.
           MOVE WRK-CPF TO WRK-CPF-MASK.
           DISPLAY 'CPF Formatado: ' WRK-CPF-MASK.
           STOP RUN.
