*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
  # variables+-+passing+scalar+to+keyword
#User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    #Begin Web Test  http://www.amazon.com  chrome

  # variables+-+passing+list+to+keyword
User can search for products
    # Here we pass variable input data to a user-defined keyword
    # Try it: Change the URL and/or browser input values (ie, chrome, firefox, etc.)
    @{url_and_browser} =  Set Variable  http://www.amazon.com  chrome
    Begin Web Test  @{url_and_browser}


*** Keywords ***
  # variables+-+passing+scalar+to+keyword
#Begin Web Test
    #[Arguments]  ${url}  ${browser}
    #Open Browser  ${url}  ${browser}
    #Close Browser

  # variables+-+passing+list+to+keyword
Begin Web Test
    [Arguments]  @{url_and_browser}
    Open Browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    Close Browser