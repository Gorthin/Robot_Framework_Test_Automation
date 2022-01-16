*** Settings ***
Library  SeleniumLibrary
Resource    ../Tests/Amazon.robot

*** Variables ***


*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Hello