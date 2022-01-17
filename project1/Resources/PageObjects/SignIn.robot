*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${SIGNIN_MAIN_HEADING} =  xpath=//*[@id="authportal-main-section"]/div[2]/div/div[1]/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    page should contain element  class:a-spacing-small
    element text should be  class:a-spacing-small  Sign-In
    sleep  1s
