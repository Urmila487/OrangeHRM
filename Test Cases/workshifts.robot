*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome


*** Test Cases ***
WorkShifts

    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    click element  xpath://b[normalize-space()='Admin']
    click element  xpath://a[normalize-space()='Job']
    sleep  3 seconds
    click element  xpath://a[normalize-space()='Work Shifts']
    sleep  3 seconds
    click button  Add
    input text  id:workShift_name   Shift123
    select from list by index  name:workShift[workHours][from]  14
    select from list by index  name:workShift[workHours][to]    25
    click element  xpath://option[@value='33']
    click element  xpath://a[normalize-space()='Add >>']
    click button  Save

