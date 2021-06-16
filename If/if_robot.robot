*** Settings ***
Documentation     teste para ifs
Library    OperatingSystem
Library    XML

*** Variables ***
@{PAISES}     Pais1     Pais2     Pais3     Pais4     Pais5

*** Test Cases ***

Teste de ifs    
    Imprimir apenas pais Pais3

Teste de numeracao
    Imprimir de 0 a 11

*** Keywords ***
Teste de numeracao
imprimir de ${A} a ${B}
    FOR  ${numero}  IN RANGE  ${A}  ${B}
        IF  ${numero} == 5 or ${numero}== 8
        Log To Console    Estou no número: ${numero} de 10.
        ELSE
        Log To Console    Demais numeros que restaram : ${numero} de 10.
        END

    END

Imprimir apenas pais Pais3
    FOR     ${pais}     IN     @{PAISES}
        IF    '${pais}' == 'Pais3' 
           Log To Console    Opa deu Pais 3
        ELSE
            Log To Console   OPA NAO É ESSE
        END
    END