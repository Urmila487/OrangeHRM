*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Forgot Password Test Case
    open browser    ${url}      ${browser}
    wait until page contains element  xpath://div[@id='divLogo']//img
    click link  Forgot your password?
    input text  xpath://input[@id='securityAuthentication_userName']    Admin
    click button  Reset Password
    close browser