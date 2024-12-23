       IDENTIFICATION DIVISION.
       PROGRAM-ID. VIRGULAMASCARA.
      ***************************************************
      * AUTHOR = BATISTA
      * DATA = 23/12/2024
      * Vírgula e Másca de Edição (Tipo 01-49)
      ***************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.
       77 WRK-SALARIO PIC 9(06)V99 VALUE ZEROS.
       77 WRK-SALARIO-MASK PIC $ZZZ.ZZ9,99 VALUE ZEROS.
      ********* Cláusula Z supre os zeros, caso existam
       
       PROCEDURE DIVISION.
      *************RECEPÇÃO DE DADOS**************
           DISPLAY 'Digite o seu nome'
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'Digite o seu salario(IIIII,DDD)'
           ACCEPT WRK-SALARIO FROM CONSOLE.
           MOVE WRK-SALARIO TO WRK-SALARIO-MASK
           DISPLAY 'Salario:' WRK-SALARIO-MASK ' Nome: ' WRK-NOME
           STOP RUN.
