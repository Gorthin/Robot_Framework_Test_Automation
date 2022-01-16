*** Settings ***
Documentation  This is some basic info about the whole suite
# notice we're no longer referencing the Selenium2Library in our script!
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AmazonWeb.robot  # necessary for lower level keywords in test cases
Suite Setup  Insert Testing Data
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test
Suite Teardown  Cleaning Testing Data

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    AmazonWeb.Search for Products

Logged out user can view a product
    AmazonWeb.Search for Products
    AmazonWeb.Select product from Search Results

Logged out user can add product to cart
    AmazonWeb.Search for Products
    AmazonWeb.Select product from Search Results
    AmazonWeb.Add Product to Cart

Logged out user must sign in to check out
    AmazonWeb.Search for Products
    AmazonWeb.Select product from Search Results
    AmazonWeb.Add Product to Cart
    AmazonWeb.Begin Checkout

#User can search for products
    #[Documentation]  This is some basic info about the test
    #[Tags]  Smoke
    #AmazonWeb.Search for Products

#User must sign in to check out
    #[Documentation]  This is some basic info about the test
    #[Tags]  Smoke
    #AmazonWeb.Search for Products
    #AmazonWeb.Select product from Search Results
    #AmazonWeb.Add product to Cart
    #AmazonWeb.Begin Checkout