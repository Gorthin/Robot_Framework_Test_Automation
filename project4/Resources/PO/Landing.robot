*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${LANDING_TEXT} =  Gaming

*** Keywords ***
Navigate To
    Go To  ${URL.${ENVIRONMENT}}
    maximize browser window

Verify Page Loaded
    wait until page contains  ${LANDING_TEXT}