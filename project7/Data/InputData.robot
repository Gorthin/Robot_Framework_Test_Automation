
*** Variables ***
# Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL}  dev=https://dev.cars.com/  qa=https://qa.cars.com/  prod=https://www.cars.com/
${LOGIN_URL} =  signin/?redirect_path=%2Fprofile%2F
${INVALID_CREDENTIALS_PATH_CSV} =  D:\\Python\\Robot_Framework_Test_Automation\\project7\\Data\\Users.csv
