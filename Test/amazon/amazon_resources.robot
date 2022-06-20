*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${BROWSER}                  chrome
${URL}                      http://www.amazon.com.br
${MENU_ELETRONICOS}         //*[@id="nav-xshop"]/a[2]

*** Keywords ***
Abrir o navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fecha o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To                               url=${URL}
    Wait Until Element Is Visible       locator=${MENU_ELETRONICOS}

Entrar no menu "Mais vendidos"
    Click Element                       locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "Mais vendidos"
    Wait Until Page Contains            text=Mais vendidos
    Wait Until Element Is Visible       css=#zg_banner_text

Verificar se o título da página fica "${TITULO}"
    Title Should Be                    title=${TITULO}

Digitar o nome de produto "${PESQUISA_PRODUTO}" no campo de Pesquisa
    Input Text                          id=twotabsearchtextbox          ${PESQUISA_PRODUTO}

Clicar no botão de pesquisa
    Click Element                       id=nav-search-submit-button

Verificar o resultado da pesquisa, se está listando o produto "${VERIFICA}"
    