*** Settings ***
Library  SeleniumLibrary
Resource  ../Tests/Google.robot

*** Keywords ***
Verify Search Completed
    wait until page contains  From Wikipedia

#Click Product Link
#    [Documentation]  Clicks on the first product in the search results list
#    click link  Long Term Evolution – Wikipedia, wolna encyklopedia