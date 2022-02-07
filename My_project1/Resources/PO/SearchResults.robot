*** Settings ***
Library  SeleniumLibrary
Resource  ./My_project1/Tests/Google.robot

*** Keywords ***
Verify Search Completed
    wait until page contains  From Wikipedia

Click Downloaded Link
    [Documentation]  Clicks downloaded as pdf button
    click link  Download as PDF