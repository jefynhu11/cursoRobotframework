***Settings***
Documentation       Suite para exemplificar uso de LOGs nos testes
...                 Os LOGs são de grande utilidade, faça LOGs para analisar como seu teste está sendo executado nas entrelinhas
...                 Os LOGs te ajudam a achar falhas na automação dos seus testes
...                 Use LOGs sem moderação!!
Library             SeleniumLibrary

***Variables***
@{FRUTAS}           MAÇA  BANANA  UVA  ABACAXI

***Test Cases***
Caso de teste exemplo 01
    Usando LOG para mensagens
    Usando LOG Console
    Usando screen shots

***Keywords***
Usando LOG para mensagens
    Log     Minha mensagem de Log
    ${VAR}  Set Variable        variavel qualquer
    Log     Posso logar uma ${VAR} no meio de um log

Usando LOG Console
    Log To Console      Posso logar na saída do Console
    Log Many            Posso logar minha lista completa @{FRUTAS}
    Log                 Posso logar somente itens da minha lista ${FRUTAS[0]} - ${FRUTAS[1]}

Usando screen shots
    Log                 Nos testes web, podemos logar Screenshot com a SeleniumLibrary
    Open Browser        http://www.google.com.br            chrome
    Capture Page Screenshot         nome_do_screenshot.png
    Close Browser