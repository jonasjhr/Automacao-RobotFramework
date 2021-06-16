    
*** Settings ***
Documentation    Site: http://automationpractice.com
Resource        resourceWebTesting.robot
Suite Setup        Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
Caso de Teste 01: Pesquisar produto existente  
    Sleep     7s
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site
    Adicionar o produto "Blouse" no carrinho

    
  
  

