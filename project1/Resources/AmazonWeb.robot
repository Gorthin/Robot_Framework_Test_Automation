*** Settings ***
  # Library  SeleniumLibrary
Resource  ../Resources/PageObjects/LandingPage.robot
Resource  ../Resources/PageObjects/TopNav.robot
Resource  ../Resources/PageObjects/SearchResults.robot
Resource  ../Resources/PageObjects/Product.robot
Resource  ../Resources/PageObjects/Cart.robot
Resource  ../Resources/PageObjects/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search for Products
    SearchResults.Verify Search Completed
    #go to  http://www.amazon.com
    #input text  id=twotabsearchtextbox  Ferrari 458
    #click button  id=nav-search-submit-button
    #wait until page contains  results for "Ferrari 458"

Select product from Search Results
    SearchResults.Click Product Link
    Product.Verify Page Loaded
    #click link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/h2/a
    #wait until page contains  Back to results

Add Product to Cart
    Product.Add to Cart
    Cart.Verify Product Added
    #click button  id=add-to-cart-button
    #wait until page contains  Added to Cart

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded
    #click link  xpath=/html/body/div[1]/div[2]/div/div[1]/div[2]/div/span[2]/span/a
    #page should contain element  class:a-spacing-small
    #sleep  1s