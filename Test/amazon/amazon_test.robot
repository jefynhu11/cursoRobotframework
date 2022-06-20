*** Settings ***
Documentation       Essa suíte testa o site da Amazon.com.br
Resource            amazon_resources.robot
Test Setup          Abrir o navegador
Test Teardown       Fecha o navegador

*** Test Cases ***
Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]     Esse teste verifica o menu eletrônicos do site da Amazon.com.br
    ...                 e verifica a categoria Computadores e Informática
    [Tags]              menus categorias
    Acessar a home page do site Amazon.com.br
    Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
    Entrar no menu "Mais vendidos"
    Verificar se aparece a frase "Mais vendidos"
    Verificar se o título da página fica "Amazon.com.br Mais Vendidos: Os itens mais populares na Amazon"
    #Verificar se aparece a categoria "Computadores e Informática"

Caso de Teste 02 - Pesquisa de um produto
    [Documentation]     Esse teste verifica a busca de um produto
    [Tags]              busca_produtos lista_busca
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Xbox Series S" no campo de Pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa, se está listando o produto "Console Xbox Series S"