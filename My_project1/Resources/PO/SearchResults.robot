*** Settings ***
Library  SeleniumLibrary
Resource  ./project1/Tests/Amazon.robot

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link  Long Term Evolution – Wikipedia, wolna encyklopedia