*** Settings ***
Documentation    Testes para criar KWs que recebem argumentos e retornam um resultado

Suite setup         KeyWord para executar no setup da suite
Test setup         KeyWord para executar no setup de cada teste
Suite teardown     KeyWord para executar no teardown da suite
Test teardown     KeyWord para executar no teardown de cada teste


*** Test Cases ***
Teste de somar dois números
    ${RESULTADO_SOMA}    Somar dois números    1    2
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}
    ${RESULTADO_SOMA}    Somar dois números    3    4
    Log To Console    O resultado da soma é: ${RESULTADO_SOMA}

Teste de somar dois números embutidos
    ${RESULTADO_SOMA}    Somar os números "3" e "6"
    Log To Console    O resultado da soma embutida é: ${RESULTADO_SOMA}
    ${RESULTADO_SOMA}    Somar os números "55" e "45"
    Log To Console    O resultado da soma embutida é: ${RESULTADO_SOMA}    

*** Keywords ***
KeyWord para executar no setup da suite
    Log To Console    Essa kw foi executada antes de começar a suite1
KeyWord para executar no setup de cada teste
    Log To Console    Essa kw foi executada antes de começar esse teste2
KeyWord para executar no teardown da suite
   Log To Console    Essa kw foi executada ao final a suite3
KeyWord para executar no teardown de cada teste
    Log To Console    Essa kw foi executada ao final  esse teste4
Somar dois números
    [Arguments]    ${NUM_A}    ${NUM_B}
    Log To Console    ${\n}Estou somando os números: ${NUM_A}+${NUM_B}
    ${RESULTADO}   Evaluate    ${NUM_A}+${NUM_B}
    Log To Console    O resultado é: ${RESULTADO}
    [Return]    ${RESULTADO}

Somar os números "${NUM_A}" e "${NUM_B}"
    Log To Console    ${\n}Estou somando os números embutidos: ${NUM_A}+${NUM_B}
    ${RESULTADO}   Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${RESULTADO}