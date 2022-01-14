*** Settings ***
Documentation  This is some basic info about the whole suite
  # we are no longer referencing the Selenium Library
Library  SeleniumLibrary
#Resource  Resources/Common.robot  # necessary for Setup & Teardown
#Resource  Resources/Amazon.robot  # necessary for lower level keywords in test
#Test Setup  Begin Web Test
#Test Teardown  End Web Tests

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Begin Web Test
    Search for Products
    Select product from Search Results
    Add product to Cart
    Begin Checkout
    End Web Test

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

Search for Products
    go to  http://www.amazon.com
    input text  id=twotabsearchtextbox  Ferrari 458
    click button  id=nav-search-submit-button
    wait until page contains  results for "Ferrari 458"

Select product from Search Results
    click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/h2/a
    wait until page contains  Back to results

Add product to Cart
    click button  id=add-to-cart-button
    wait until page contains  Added to Cart

Begin Checkout
    click link  xpath=/html/body/div[1]/div[2]/div/div[1]/div[2]/div/span[2]/span/a
    page should contain element  class:a-spacing-small
    sleep  1s

End Web Test
    close browser