    
*** Settings ***
Documentation    Site: http://automationpractice.com
#Resource        resourceWebTesting.robot
Resource          desafio_webtesting.robot
Suite Setup       Abrir o navegador
Suite Teardown    Fechar o navegador

*** Test Cases ***
    
Caso de Teste 02: Pesquisar produto não existente
    Sleep     7s
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNãoExistente""
    
Caso de Teste 03: Listar Produtos
     Acessar a página home do site
     Sleep     7s
     Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
     Clicar na sub categoria "Summer Dresses"
     Conferir se os produtos da sub-categoria "Summer Dresses" foram mostrados na página

Caso de Teste 04: Adicionar Cliente
    Acessar a página home do site novamente
    Sleep     7s
    Clicar em "Sign in"
    Informar o e-mail "jonasjhr1@hotmail.com" válido
    Clicar em "Create an account"
    Sleep     7s
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso
    
    
  
  


  

