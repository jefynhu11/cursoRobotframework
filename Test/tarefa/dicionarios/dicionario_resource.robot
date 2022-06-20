*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${MESES_DIAS}            jan=31
...                 fev=28
...                 mar=31
...                 abr=30
...                 mai=31
...                 jun=30
...                 jul=31
...                 ago=31
...                 set=30
...                 out=31
...                 nov=30  
...                 dez=31

***Keywords***
Cada meses com numero de dias
    Log To Console      Janeiro tem dias: ${MESES_DIAS.jan}
    Log To Console      Fevereiro tem dias: ${MESES_DIAS.fev}
    Log To Console      Março tem dias: ${MESES_DIAS.mar}
    Log To Console      Abril tem dias: ${MESES_DIAS.abr}
    Log To Console      Maio tem dias: ${MESES_DIAS.mai}
    Log To Console      Junho tem dias: ${MESES_DIAS.jun}
    Log To Console      Julho tem dias: ${MESES_DIAS.jul}
    Log To Console      Agosto tem dias: ${MESES_DIAS.ago}
    Log To Console      Setembro tem dias: ${MESES_DIAS.set}
    Log To Console      Outubro tem dias: ${MESES_DIAS.out}
    Log To Console      Novembro tem dias: ${MESES_DIAS.nov}
    Log To Console      Dezembro tem dias: ${MESES_DIAS.dez}