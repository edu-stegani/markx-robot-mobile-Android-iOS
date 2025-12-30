*** Settings ***
Documentation    Implementar metodos da tela Minhas tarefas 

Library    AppiumLibrary

*** Variables ***
${new_task_input}    accessibility_id=newTask
${create_button}    accessibility_id=createTask

*** Keywords ***
Create a new task
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    ${new_task_input}    10s
    Input Text    ${new_task_input}    ${task_name}
    Click Element    ${create_button}

    Close keyboard

Should have task
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@name="taskText"][@value="${task_name}"]    10s

Remove task by name
    [Arguments]    ${task_name}

    ${remove_button}    Set Variable    xpath=//*[@value="${task_name}"]/../..//*[@name="removeTask"]
    Wait Until Element Is Visible  ${remove_button}    7s
    Click Element                  ${remove_button}

    ${yes_button}    Set Variable    xpath=//XCUIElementTypeButton[@name="Sim"]
    Wait Until Element Is Visible    ${yes_button}    7s
    Click Element    ${yes_button}

Finish task
    [Arguments]    ${task_name}

    ${finish_button}    Set Variable    xpath=//*[@value="${task_name}"]/..//*[@name="taskTodo"]
    Wait Until Element Is Visible  ${finish_button}    7s
    Click Element                  ${finish_button}

Task should be done
    [Arguments]    ${task_name}

    Wait Until Element Is Visible    xpath=//*[@value="${task_name}"]/..//*[@name="taskFinished"]    10s

# Helpers
Close keyboard
    ${return}    Set Variable    xpath=//XCUIElementTypeButton[@name="Return"]
    Wait Until Element Is Visible    ${return}    7s
    Click Element    ${return}