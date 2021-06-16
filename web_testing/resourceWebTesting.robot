*** Settings ***
Documentation    Resource com as implementações das KWs da suitWebTesting
Library    SeleniumLibrary

*** Variables ***
${URL}    http://automationpractice.com


*** Keywords ***
## -----SETUP
Abrir o navegador
    Open Browser     browser=chrome

    ##----TEARDOWN
Fechar o navegador
    Close Browser

## ------STEPS

Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible     xpath=//ul[@class='sf-menu clearfix menu-content sf-js-enabled sf-arrows'][contains(.,'WomenTopsT-shirtsBlousesDressesCasual DressesEvening DressesSummer DressesDressesCasual DressesEvening DressesSummer DressesT-shirts')] 

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text  id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Elemente Is Visible     xpath=//img[contains(@alt,'${PRODUTO}')]

Adicionar o produto "${PRODUTO}" no carrinho
    Mouse Over     xpath=//img[contains(@alt,'${PRODUTO}')]
    Click Element    xpath=//span[contains(.,'Add to cart')]
