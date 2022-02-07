*** Settings ***
Library  SeleniumLibrary
Resource  ./My_project1/Tests/Google.robot

*** Variables ***


*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    Wait Until Page Contains  Welcome to Wikipedia