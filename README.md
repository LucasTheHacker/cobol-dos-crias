# cobol-dos-crias

Repositório destinado a concentrar arquivos COBOL utilizados no estudo. Quem sabe futuramente façamos uma guilda.
a

## Arquivos relativos à aula 01

- HELLOWORLD.cob

## Para executar os códigos, rode esse comando

Compilar:

```shell
cobc -x -o run PROGCOB01.cob
```

Executar

```shell
./run
```

## Conceitos

- DISPLAY = Print
- ACCEPT = Passar valor para variavel
  - Ex: ACCEPT WRK-VARIAVEL FROM CONSOLE.
  - Recebe valor do console e coloca na variável
- COMPUTE = Escrever expressões matematicas

## Variáveis

- Sempre definir variáveis primitivas com PIC entre o nome e o tipo
  - Ex: 77 WRK-NUM **PIC** 9(02) VALUE ZEROS.
- VALUE define o valor default para a variável.
  - Ex: VALUE ZEROS declara uma variável criada com apenas 0.
- 77 Para variáveis primitivas (String, Int)
  - X = String
  - 9 = Int
  - S9 = Int com sinal (Positivo e negativo)
  - (XX) = Define o numero de casas que aquela variável poderá ter
  - Z = Oculta os 0 à esquerda no momento de printar a varíavel
  - \-Z = O sinal ( \- ) antes do Z indica que será mostrado o sinal do numero printado
- 01-44 Para variáveis estruturadas, ou seja, semelhante a um objeto do java
  - Ex:

  ```cobol
    01 WRK-DATA.
        02 WRK-ANO PIC 9(04) VALUE ZEROS. 
        02 WRK-MES PIC 9(02) VALUE ZEROS.
        02 WRK-DIA PIC 9(02) VALUE ZEROS.
  ```

## Condicionais