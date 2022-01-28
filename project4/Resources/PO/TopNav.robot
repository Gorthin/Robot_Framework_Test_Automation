*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${TOPNAV_MOVE_OVER} =  xpath://*[@id="nav-link-accountList"]
${TOPNAV_REGISTER_LINK} =  xpath://*[@id="nav-flyout-ya-newCust"]/a
${TOPNAV_LOGIN_LINK} =  Log in

*** Keywords ***
Verify Page Loaded
    element text should be  ${TOPNAV_HEADING}  Start here.

Click Registration Link
    mouse over    ${TOPNAV_MOVE_OVER}
    click link    ${TOPNAV_REGISTER_LINK}

Click Login Link
    Click Link  ${TOPNAV_LOGIN_LINK}