*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  ./My_project1/Tests/Google.robot
Resource  ../Resources/PO/OSKeywords.robot
Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot

*** Variables ***
${output_directory} =  Outputs
${directory_1} =  first directory
${directory_2} =  second directory
${file_1} =  LTE_(telecommunication).pdf
${using_directory} =  \Results\\Downloads

*** Keywords ***
#Create unique folder
Downloading LTE as PDF
    # create unique folder
#    ${now}    Get Time    epoch
    ${download directory}    Join Path    ${OUTPUT DIR}    Downloads    #_${now}
    Create Directory    ${download directory}
    ${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # list of plugins to disable. disabling PDF Viewer is necessary so that PDFs are saved rather than displayed
    ${disabled}    Create List    Chrome PDF Viewer
    ${prefs}    Create Dictionary    download.default_directory=${download directory}    plugins.plugins_disabled=${disabled}
    Call Method    ${chrome options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    chrome_options=${chrome options}
#    Goto    https://en.wikipedia.org/w/index.php?title=Special:DownloadAsPdf&page=LTE_%28telecommunication%29&action=show-download-screen
#    Click button    Download    # downloads a file
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed
    SearchResults.Click Downloaded Link
    Product.Click Download Button
    # wait for download to finish
    ${file}    Wait Until Keyword Succeeds    1 min    2 sec    Download should be done    ${download directory}
#    OSKeywords.Download should be done

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

Create the Base Directory
    Create Directory  ${output_directory}
    Should Exist  ${output_directory}

Create Directory 1
    ${directory_path} =  Join Path  ${output_directory}  ${directory_1}
    Create Directory  ${directory_path}
    Should Exist  ${directory_path}

Create Directory 2
    ${directory_path} =  Join Path  ${output_directory}  ${directory_2}
    Create Directory  ${directory_path}
    Should Exist  ${directory_path}

Copy File 1 from Directory 1 to Directory 2
    ${source_path} =  Join Path  ${using_directory}  ${file_1}
    ${target_path} =  Join Path  ${output_directory}  ${directory_1}

    Copy File  ${source_path}  ${target_path}

    # verify that file 1 is now present in both directory 1 and directory 2
    Should Exist  ${source_path}
    Should Exist  ${target_path}

Move File 1 from Directory 1 to Directory 2
    ${source_path} =  Join Path  ${output_directory}  ${directory_1}  ${file_1}
    ${target_path} =  Join Path  ${output_directory}  ${directory_2}

    Move File  ${source_path}  ${target_path}

    # verify that file 1 was moved from directory 1 to directory 2
    Should Exist  ${target_path}
    Should Not Exist  ${source_path}
