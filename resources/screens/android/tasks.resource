*** Settings ***
Documentation    Implementar metodos da tela Minhas tarefas 

Library    AppiumLibrary

*** Variables ***
${new_task_input}    xpath=//*[@contains(@text, "nova tarefa")]
${create_button}    xpath=//*[@resource-id="createTask"]

*** Keywords ***
Create a new task
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    ${new_task_input}    10s
    Input Text    ${new_task_input}    ${task_name}
    Click Element    ${create_button}

Should have task 
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@resource-id="taskText"][@text="${task_name}"]    10s

Remove task by name
    [Arguments]    ${task_name}
    
    ${remove_button}    Set Variable    xpath=//*[@text="${task_name}"]/../..//*[@resource-id="removeTask"]
    Wait Until Element Is Visible  ${remove_button}    7s
    Click Element                  ${remove_button}

    ${yes_button}    Set Variable    xpath=//android.widget.Button[@text="SIM"]
    Wait Until Element Is Visible    ${yes_button}    7s
    Click Element    ${yes_button}

Finish task
    [Arguments]    ${task_name}

    ${finish_button}    Set Variable    xpath=//*[@text="${task_name}"]/..
    Wait Until Element Is Visible  ${finish_button}    7s
    Click Element                  ${finish_button}

Task should be done
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@text="${task_name}"]/..//android.widget.ImageView    10s