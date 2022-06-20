***Settings***
Documentation       Exemplo de keyword com argumento
Library             FakerLibrary

***Variables***
&{PESSOA}           nome=Jeferson       sobrenome=Eugenio

***Test Cases***
Caso de teste de email aleatoria
    ${EMAIL_CRIADO}     email aleatoria     ${PESSOA.nome}      ${PESSOA.sobrenome}
    Log To Console      ${EMAIL_CRIADO}

***Keywords***
email aleatoria
    [Arguments]         ${NOME}     ${SOBRENOME}
    ${ALEATORIA}        FakerLibrary.Word
    ${EMAIL_FINAL}      Set Variable        ${NOME}${SOBRENOME}${ALEATORIA}@testerobot.com
    
    [Return]            ${EMAIL_FINAL}