*** Settings ***
Documentation    Testar funcionalidades da tela Minhas tarefas
Resource    ../resources/base.resource

Test Setup    Start Session
Test Teardown    Finish Session

*** Test Cases ***
Criar nova tarefa com sucesso
    # Definindo a massa de teste
    ${task}    Set Variable    Study mobile automation
    # Removendo a massa de teste do banco de dados para não dar erro de duplicidade
    Remove Task From Database    ${task}
 
    Do login
    Create a new task    ${task}
    Should have task     ${task}

Remover tarefa da lista
    # Definindo a massa de teste
    ${task}    Set Variable    Study mobile automation
    # Removendo a massa de teste do banco de dados para não dar erro de duplicidade
    Remove Task From Database    ${task}
    
    # Dado que eu tenha uma tarefa indesejada
    Do login
    Create a new task    ${task}
    Should have task     ${task}
    # Quando eu removo a tarefa indesejada
    Remove task by name    ${task}
    # Então a tarefa não deve mais existir na lista
    Wait Until Page Does Not Contain    ${task}

Concluir tarefa da lista
    # Definindo a massa de teste
    ${task}    Set Variable    Study mobile automation
    # Removendo a massa de teste do banco de dados para não dar erro de duplicidade
    Remove Task From Database    ${task}
    
    Do login
    Create a new task    ${task}
    Should have task     ${task}
  
    Finish task    ${task}
    Task should be done    ${task}
