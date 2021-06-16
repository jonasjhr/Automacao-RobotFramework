*** Settings ***
Documentation  Testes de loops {for}
Library    OperatingSystem

*** Variables ***
@{FRUTAS}  maça banana uva
@{PAISES}    Pais1      Pais2      Pais3     Pais4     Pais5 

*** Test Cases ***
Teste do FOR IN RANGE (para intervalos)
    Imprimir de 0 a 11

Teste dos Paises
    imprimir uma lista

*** Keywords ***

imprimir de ${A} a ${B}
    FOR  ${numero}  IN RANGE  ${A}  ${B}
        Log To Console    Estou no número: ${numero} de 0 a 10.
        ##${RESULTADO}    Evaluate    ${numero}+10
        ##Log to console  Numero+10 = ${RESULTADO}
    END

imprimir uma lista
    FOR    ${PAIS}    IN    @{PAISES}
     Log To Console    ${\n}$O pais da vez é: ${PAIS}
    END 