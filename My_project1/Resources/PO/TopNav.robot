*** Settings ***
Documentation  Google top navigation
Library  SeleniumLibrary
Resource  ./project1/Tests/Amazon.robot

*** Variables ***
${TOPNAV_SEARCH_BAR} =  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
${TOPNAV_SEARCH_BUTTON} =  xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[2]/div[5]/center/input[1]

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    input text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}

Submit Search
    click button  ${TOPNAV_SEARCH_BUTTON}