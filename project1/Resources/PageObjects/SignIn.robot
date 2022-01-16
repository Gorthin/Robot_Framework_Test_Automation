*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    page should contain element  class:a-spacing-small
    sleep  1s