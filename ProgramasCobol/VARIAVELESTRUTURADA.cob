       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIAVELESTRUTURADA.
      ***************************************************
      * AUTHOR = BATISTA
      * DATA = 23/12/2024
      * Variáveis Estruturadas (Tipo 01-49)
      ***************************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION. 
      * Variavel sem o PIC quer dizer que é uma variável pai, semelhante
      * à um objeto do java, possui atributos dentro 
       01 WRK-DATA.
        02 WRK-ANO PIC 9(04) VALUE ZEROS. 
        02 WRK-MES PIC 9(02) VALUE ZEROS.
        02 WRK-DIA PIC 9(02) VALUE ZEROS.
      ***************************************************
       PROCEDURE DIVISION.
           DISPLAY 'Digite a data de hoje (yyyyMMdd)'
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA: ' WRK-DIA '/' WRK-MES '/' WRK-ANO
           DISPLAY 'ANO = ' WRK-ANO.
           DISPLAY 'MES = ' WRK-MES.
           DISPLAY 'DIA = ' WRK-DIA.
           STOP RUN.
