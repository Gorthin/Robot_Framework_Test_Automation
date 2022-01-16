*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    wait until page contains  Added to Cart

Proceed to Checkout
    click link  xpath=/html/body/div[1]/div[2]/div/div[1]/div[2]/div/span[2]/span/a