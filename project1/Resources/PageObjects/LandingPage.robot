*** Settings ***
Library  SeleniumLibrary
Resource  ./project1/Tests/Amazon.robot

*** Variables ***


*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Hello