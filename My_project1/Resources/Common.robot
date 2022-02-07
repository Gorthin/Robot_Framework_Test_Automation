*** Settings ***
Library  SeleniumLibrary
Library  BuiltIn
Library  String
Library  Process
Resource    ../Tests/Google.robot

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    maximize browser window
    sleep   1

End Web Test
    close all browsers