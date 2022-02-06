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
    SearchResults.Click Product Link
    Product.Verify Page Loaded

Change and download
    Product.Change Language
    Product.Download As Pdf

#Begin Checkout
#    Cart.Proceed to Checkout
#    SignIn.Verify Page Loaded