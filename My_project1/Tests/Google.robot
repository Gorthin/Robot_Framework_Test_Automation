*** Settings ***
Documentation  This is some basic info about the whole suite

Resource  ../Resources/Common.robot
Resource  ../Resources/GoogleWeb.robot
Resource  ../Resources/OS.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

# robot -d results -i Current tests/Google.robot
# robot -d results -i down tests/Google.robot
# robot -d results -i OperatingSystem tests/Google.robot
# robot -d results tests/Google.robot

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://en.wikipedia.org/wiki/Main_Page
${SEARCH_TERM} =  Long Term Evolution

*** Test Cases ***
#Logged out user can search for products
#    [Tags]  Current
#    GoogleWeb.Search for Products
#
#Go to download page
#    [Tags]  Second
#    GoogleWeb.Search for Products
#    GoogleWeb.Select product from Search Results

Download PDF
    [Tags]  down
    OS.Downloading LTE as PDF

Create Some Directories
    [Tags]  OperatingSystem
    OS.Create the Base Directory
    OS.Create Directory 1
    OS.Create Directory 2

Copy a File
    [Tags]  OperatingSystem
    OS.Copy File 1 from Directory 1 to Directory 2

Move a File
    [Tags]  OperatingSystem
    OS.Move File 1 from Directory 1 to Directory 2