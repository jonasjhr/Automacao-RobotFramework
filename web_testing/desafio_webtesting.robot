*** Settings ***
Documentation    Resource com as implementações das KWs da desafio_webtesting.robot
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

##-------STEPS-- Teste 2

Acessar a página home do site Automation Practice
    Go To    ${URL}
    Wait Until Element Is Visible     xpath=//ul[@class='sf-menu clearfix menu-content sf-js-enabled sf-arrows'][contains(.,'WomenTopsT-shirtsBlousesDressesCasual DressesEvening DressesSummer DressesDressesCasual DressesEvening DressesSummer DressesT-shirts')] 

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text  id=search_query_top    ${PRODUTO}

Clicar no botão pesquisar
    Click Button    name=submit_search

Conferir mensagem "No results were found for your search "itemNãoExistente""
    Wait Until Element Is Visible    xpath=//p[@class='alert alert-warning'][contains(.,'No results were found for your search "itemNãoExistente"')]

##-------STEPS-- Teste 3

Acessar a página home do site
    Go To    ${URL}
    Wait Until Element Is Visible     xpath=//ul[@class='sf-menu clearfix menu-content sf-js-enabled sf-arrows'][contains(.,'WomenTopsT-shirtsBlousesDressesCasual DressesEvening DressesSummer DressesDressesCasual DressesEvening DressesSummer DressesT-shirts')] 

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over     xpath=//a[contains(@title,'Women')]

Clicar na sub categoria "Summer Dresses"
    Click Element    xpath=(//a[@href='http://automationpractice.com/index.php?id_category=11&controller=category'][contains(.,'Summer Dresses')])[1]

Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página
    Wait Until Element Is Visible    xpath=//span[@class='category-name'][contains(.,'Summer Dresses')]

##-------STEPS-- Teste 4

Acessar a página home do site novamente
    Go To    ${URL}
    Wait Until Element Is Visible     xpath=//ul[@class='sf-menu clearfix menu-content sf-js-enabled sf-arrows'][contains(.,'WomenTopsT-shirtsBlousesDressesCasual DressesEvening DressesSummer DressesDressesCasual DressesEvening DressesSummer DressesT-shirts')] 

Clicar em "Sign in"
    Click Element    xpath=//a[@class='login'][contains(.,'Sign in')]

Informar o e-mail "${EMAIL}" válido
    Input Text  id=email_create    ${EMAIL}

Clicar em "Create an account"
    Click Element    xpath=//span[contains(.,'Create an account')]

Preencher os dados obrigatórios
    Wait Until Element Is Visible     xpath=//h3[@class='page-subheading'][contains(.,'Your personal information')]
    Input Text  id=customer_firstname     testejhr1
    Input Text  id=customer_lastname      testejhrsobrenome1 
    Input Text  id=passwd                  trocar12345
    Input Text  id=firstname    testejhr1
    Input Text  id=lastname    testejhrsobrenome1
    Input Text  id=address1    Street Teste
    Input Text  id=city        sao paulo
    Select From List By Index    xpath=//select[@name='id_state'][contains(@id,'state')]    1
    Input Text  id=postcode    00000
    Input Text  id=phone_mobile    11966779857
    #Click Element    xpath=//select[@name='id_state'][contains(@id,'state')]
    #Select From List By Label    Alaska

    

Submeter cadastro
    Click Element    xpath=//span[contains(.,'Register')]
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible     xpath=//a[@class='logout'][contains(.,'Sign out')]