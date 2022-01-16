*** Settings ***
Resource    ../Resources/Scope.robot

*** Variables ***
${MY_VARIABLE} =  From the script file

*** Test Cases ***
Create and log a variable
    # ${my_variable} =  set variable  Some information
    log    ${MY_VARIABLE}

Acces a variable
    log    ${MY_VARIABLE}


*** Keywords ***