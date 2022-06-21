***Settings***
Documentation       Suite para exemplificar uso de LOGs nos testes
...                 O IF deve ser pouco utilizado, mas tem hora que não tem jeito
...                 e precisamos dele mesmo, então vamos ver como é!
...                 IF: use com moderação!
Library             SeleniumLibrary

***Variable***
@{FRUTAS}           MAÇA  BANANA  UVA  ABACAXI

***Test Cases***
Caso de teste exemplo 01
    Rodando uma Keywords dadda uma condição = true
    Rodando uma Keywords dadda uma condição = false
    Armazenando um valor em uma variavel dada uma condição

***Keywords***
Rodando uma Keywords dadda uma condição = true
    Run Keyword If          '${FRUTAS[1]}' == 'BANANA'          Log  O item número 1 é a banana!!

Rodando uma Keywords dadda uma condição = false
    Run Keyword Unless          '${FRUTAS[1]}' == 'MAÇA'            Log  O item número 1 não é uma maça!!

Armazenando um valor em uma variavel dada uma condição
    ${VAR}                  Set Variable If             '${FRUTAS[2]}' == 'UVA'         UVA
    Log                     Minha variavel VAR é uma ${VAR}!!