*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${REGISTER_NAME_INPUT} =       id=ap_customer_name
${REGISTER_EMAIL_INPUT} =       id=ap_email
${REGISTER_PASSWORD1_INPUT} =   id=ap_password
${REGISTER_PASSWORD2_INPUT} =   id=ap_password_check

*** Keywords ***
Verify Page Loaded
    wait until page contains element  ${REGISTER_EMAIL_INPUT}

Fill Page and Submit
    [Arguments]  ${UserData}
    Fill Your Name  ${UserData.FirstName}
    Fill Email  ${UserData.Email}
    Fill Password  ${UserData.Password}
    Fill Confirmation Password  ${UserData.Password}
    click button    id=continue
    Sleep  5s

Fill Your Name
    [Arguments]  ${FirstName}
    Input Text  ${REGISTER_NAME_INPUT}  ${FirstName}

Fill Email
    [Arguments]  ${Email}
    Input Text  ${REGISTER_EMAIL_INPUT}  ${Email}

Fill Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD1_INPUT}  ${Password}

Fill Confirmation Password
    [Arguments]  ${Password}
    Input Text  ${REGISTER_PASSWORD2_INPUT}  ${Password}