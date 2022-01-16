*** Settings ***
Library  SeleniumLibrary
Resource    ../Tests/Amazon.robot

*** Keywords ***
Verify Search Completed
    wait until page contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/h2/a