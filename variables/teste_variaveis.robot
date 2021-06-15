*** Settings ***
Documentation  Meu testes de variaveis    

*** Variables ***
${MENSAGEM}  hello world! 
&{PESSOA}  nome=jonas  sobrenome=rodrigues  idade=15
@{FRUTAS}  banana  maça  apple

*** Test Cases ***
Meu teste de impressão de mensagem no terminal
    Logar no meu terminal uma mensagem 

Meu teste imprimindo um dicionario de PESSOA    
    Logar no meu terminal uma PESSOA

Meu teste imprimindo uma lista de FRUTAS
    Logar no meu terminal uma LISTA DE FRUTAS

*** Keywords ***
Logar no meu terminal uma mensagem 
    Log To Console    ${\n}
    Log To Console    ${MENSAGEM}

Logar no meu terminal uma PESSOA 
    Log To Console    ${\n}
    Log To Console    ${PESSOA}
    Log To Console    ${PESSOA.nome} ${PESSOA.sobrenome} ${PESSOA.idade}
    Log To Console    ${\n}

logar no meu terminal uma lista de FRUTAS
    ${nova_fruta}     Set Variable  morango
    Log To Console    ${\n}
    Log To Console    ${FRUTAS}
    Log Many          ${FRUTAS}
    Log To Console    ${nova_fruta}

    Set Test Variable  ${nova_fruta}  morango
    ${outra_fruta}  Set Variable  abacaxi
    Log To Console    ${outra_fruta}-${nova_fruta} 