*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    wait until page contains  Long Term Evolution

Change Language
    click button  xpath://*[@id="p-lang"]/div/ul/li[9]/a/span

Download As Pdf
    click button  xpath://*[@id="coll-download-as-rl"]/a/span