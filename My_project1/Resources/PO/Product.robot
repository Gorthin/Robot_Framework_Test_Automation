*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains  Long Term Evolution

Click Download Button
    [Documentation]  Clicks downloaded button
    click button    Download