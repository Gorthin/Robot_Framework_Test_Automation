
*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://cars.com/  qa=https://cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  signin/?redirect_path=%2Fprofile%2F

# Input Data
&{UNREGISTERED_USER}  Email=admin@robotframeworktutorial.com  Password=TestPassword!  ExpectedErrorMessage=Your email or password was not recognized or you may have signed up using another method. Please try again.
&{INVALID_PASSWORD_USER}  Email=bryan@bryanlamb.com  Password=TestPassword!  ExpectedErrorMessage=Your email or password was not recognized or you may have signed up using another method. Please try again.
&{BLANK_CREDENTIALS_USER}  Email=#BLANK  Password=#BLANK  ExpectedErrorMessage=Your email or password was not recognized or you may have signed up using another method. Please try again.