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
      * Variavel 77 = Publica para uso
      * PIC = Definir o tipo da variavel
      * Tipos: A - Letras
      * X - Alfanumerico
      * 9 - Numerico
      * Tamanho de variaveis:
      * X(<Tamanho da variavel>) Ex: X(20) pode ter 20 posicoes
      * VALUE define o valor inicial da variavel  
       77  WRK-NOME PIC X(20) VALUE SPACES.
       77  WRK-SALARY PIC 9(4) VALUE ZEROS.
      *************************************************** 
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
