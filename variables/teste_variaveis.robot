*** Settings ***
Documentation  Meu testes de variaveis    

*** Variables ***
${MENSAGEM}  hello world!

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem 

*** Keywords ***
Logar no meu terminal uma mensagem 
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}