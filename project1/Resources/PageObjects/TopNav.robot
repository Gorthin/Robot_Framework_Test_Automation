*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary
Resource    ../Tests/Amazon.robot

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  id=twotabsearchtextbox  ${SEARCH_TERM}

Submit Search
    click button  id=nav-search-submit-button