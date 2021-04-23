*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Sign in TestCase

    open browser    ${url}      ${browser}
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    close browser