*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Should be able to search for product
    OPEN BROWSER  http://www.amazon.com  ie
    sleep  3s
    input text  id=twotabsearchtextbox  Ferrari 458
    sleep  3s
    click button  id=nav-search-submit-button
    sleep 3s
    click link  css=.widgetId\=search-results_1 > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > h2:nth-child(2) > a:nth-child(1)
    click button  id=add-to-cart-button
    close browser

*** Keywords ***
