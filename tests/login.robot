*** Settings ***
Documentation    Testar login
Resource    ../resources/base.resource

Test Setup    Start Session
Test Teardown    Finish Session

*** Test Cases ***
Fazer login com sucesso
    [Tags]    login
    Do login
    Wait Until Page Contains    Minhas tarefas    timeout=10s
    Sleep   10
    