*** Settings ***
Documentation    Implementar metodos da tela login para encapsulamento

Library    AppiumLibrary

*** Variables ***
${API_IP}    192.168.15.9

*** Keywords ***
Do login
    Input Text    accessibility_id=apiIp    ${API_IP}
    Click Element    accessibility_id=signInButton