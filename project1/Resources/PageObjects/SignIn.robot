*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${SIGNIN_MAIN_HEADING} =  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    page should contain element  ${SIGNIN_MAIN_HEADING}
    element text should be  ${SIGNIN_MAIN_HEADING}  Sign-In
    sleep  1s
