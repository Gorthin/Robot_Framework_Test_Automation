*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/GoogleWeb.robot
Resource  ../Resources/OS.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results -i Current tests/Google.robot
# robot -d results tests/Google.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://en.wikipedia.org/wiki/Main_Page
${SEARCH_TERM} =  Long Term Evolution

*** Test Cases ***
Logged out user can search for products
    [Tags]  Current
    GoogleWeb.Search for Products

Go to download page
    [Tags]  Second
    GoogleWeb.Search for Products
    GoogleWeb.Select product from Search Results

Download PDF
    [Tags]  Download
    # create unique folder
    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    downloads_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
    Goto    https://en.wikipedia.org/w/index.php?title=Special:DownloadAsPdf&page=LTE_%28telecommunication%29&action=show-download-screen
    Click button    Download    # downloads a file
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}


*** Keywords ***
Download should be done
    [Arguments]    ${directory}
    [Documentation]    Verifies that the directory has only one folder and it is not a temp file.
    ...
    ...    Returns path to the file
    ${files}    List Files In Directory    ${directory}
    Length Should Be    ${files}    1    Should be only one file in the download folder
    Should Not Match Regexp    ${files[0]}    (?i).*\\.tmp    Chrome is still downloading a file
    ${file}    Join Path    ${directory}    ${files[0]}
    Log    File was successfully downloaded to ${file}
    [Return]    ${file}