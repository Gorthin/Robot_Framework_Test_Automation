*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/GoogleWeb.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -dresults -i Current tests/Google.robot
# robot -dresults tests/Google.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.google.com
${SEARCH_TERM} =  Long Term Evolution wikipedia

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    GoogleWeb.Search for Products

Logged out user can view a product
    GoogleWeb.Search for Products
    GoogleWeb.Select product from Search Results

Logged out user can add product to cart
    GoogleWeb.Search for Products
    GoogleWeb.Select product from Search Results
    GoogleWeb.Add Change and download

Logged out user must sign in to check out
    GoogleWeb.Search for Products
    GoogleWeb.Select product from Search Results
    GoogleWeb.Change and download
    #GoogleWeb.Begin Checkout