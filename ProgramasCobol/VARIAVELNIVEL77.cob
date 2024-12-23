       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVELNIVEL77.
      ***************************************************
      * AUTHOR = BATISTA
      * DATA = 23/12/2024
      * Variáveis independentes (Tipo 77)
      ***************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.  
       77  WRK-NOME PIC X(20) VALUE SPACES.
       77  WRK-SALARY PIC 9(4) VALUE ZEROS.
       PROCEDURE DIVISION.
           PERFORM BEGIN.
       BEGIN.
           PERFORM MAIN-PARA.
           STOP RUN.
       MAIN-PARA.
           DISPLAY '***********************'
           DISPLAY 'Iniciando programa'.
           DISPLAY '***********************'

           DISPLAY 'Qual é o seu nome? ' 
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'Quanto você ganha? '.
           ACCEPT WRK-SALARY FROM CONSOLE.

           DISPLAY 'Meu nome é ' WRK-NOME(1:10) ' e ganho ' WRK-SALARY 
           
           DISPLAY '***********************'
           DISPLAY 'Finalizando programa'.
           DISPLAY '***********************'.
