*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Admin

    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    click element  xpath://b[normalize-space()='Admin']
    click button  Add
    select from list by index  name:systemUser[userType]  1
    press key  xpath://input[@id='systemUser_employeeName_empName']  Anthony Nolan
    input text  xpath://input[@id='systemUser_userName']  Anthony Nolan
    input text  xpath://input[@id='systemUser_password']    Urmi@123
    input text  xpath://input[@id='systemUser_confirmPassword']    Urmi@123
    click button  Save




