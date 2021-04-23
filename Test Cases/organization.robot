*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome


*** Test Cases ***
Organization-Location

    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    click element  xpath://b[normalize-space()='Admin']
    click element  xpath://a[normalize-space()='Organization']
    sleep  3 seconds
    click element  xpath://a[normalize-space()='Locations']
    input text  id:searchLocation_name  Texas R&D
    input text  id:searchLocation_city  Texas
    select from list by label  name:searchLocation[country]  United States
