*** Settings ***

Resource  ../Resources/PO/LandingPage.robot
Resource  ../Resources/PO/TopNav.robot
Resource  ../Resources/PO/SearchResults.robot
Resource  ../Resources/PO/Product.robot
#Resource  ../Resources/PageObjects/Cart.robot
#Resource  ../Resources/PageObjects/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed

Select product from Search Results
    Product.Verify Page Loaded
    SearchResults.Click Downloaded Link
    Product.Click Download Button