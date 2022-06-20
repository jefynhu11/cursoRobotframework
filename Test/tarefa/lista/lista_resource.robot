*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{MESES}            jan     fev     mar     abr     mai     jun     jul     ago     set     out     nov     dez   

*** Keywords ***
Lista de meses

    Log     Primeiro mês é ${MESES[0]}
    Log     Segundo mês é ${MESES[1]}
    Log     Terceiro mês é ${MESES[2]}
    Log     Quarto mês é ${MESES[3]}
    Log     Quinto mês é ${MESES[4]}
    Log     Sexto mês é ${MESES[5]}
    Log     Sétimo mês é ${MESES[6]}
    Log     Oitvo mês é ${MESES[7]}
    Log     Nono mês é ${MESES[8]}
    Log     Décimo mês é ${MESES[9]}
    Log     Décimo primeiro mês é ${MESES[10]}
    Log     Décimo segundo mês é ${MESES[11]}