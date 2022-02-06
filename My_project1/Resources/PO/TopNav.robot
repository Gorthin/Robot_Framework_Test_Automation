*** Settings ***
Documentation  Google top navigation
Library  SeleniumLibrary
Resource  ../Tests/Google.robot

*** Variables ***
${TOPNAV_SEARCH_BAR} =  id=searchInput
${TOPNAV_SEARCH_BUTTON} =  id=searchButton

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    click button  ${TOPNAV_SEARCH_BUTTON}