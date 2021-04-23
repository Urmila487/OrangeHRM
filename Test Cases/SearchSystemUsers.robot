*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Search System Users

    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    click element  xpath://b[normalize-space()='Admin']
    input text  xpath://input[@id='searchSystemUser_userName']  Anthony Nolan
    select from list by index  name:searchSystemUser[userType]  2
    input text  xpath://input[@id='searchSystemUser_employeeName_empName']  Anthony Nolan
    select from list by index  name:searchSystemUser[status]    1
    click button  Search