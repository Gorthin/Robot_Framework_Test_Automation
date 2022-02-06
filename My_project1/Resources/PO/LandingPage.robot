*** Settings ***
Library  SeleniumLibrary
Resource  ../Tests/Google.robot

*** Variables ***


*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Gmail