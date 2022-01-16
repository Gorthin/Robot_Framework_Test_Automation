*** Settings ***


*** Variables ***
${MY_VARIABLE} =  Hello there

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_variable} =  set variable  My new variable
    log  ${my_new_variable}

Variable demonstration
    log  ${MY_VARIABLE}

Variable demonstration 2
    log  ${MY_VARIABLE}

*** Keywords ***
