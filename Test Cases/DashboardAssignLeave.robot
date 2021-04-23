*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Test Cases ***
Dashboard Assign leave

    open browser    ${url}      ${browser}
    maximize browser window
    wait until page contains element  xpath://div[@id='divLogo']//img
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    click button  LOGIN
    sleep  5 seconds
    click element  xpath://span[normalize-space()='Assign Leave']
    wait until page contains element  xpath://h1[normalize-space()='Assign Leave']
    click element  xpath://input[@id='assignleave_txtEmployee_empName']
    input text  id:assignleave_txtEmployee_empName  Nathan Elliot
    click element  xpath://select[@id='assignleave_txtLeaveType']
    select from list by index  name:assignleave[txtLeaveType]   9
    click element  xpath://input[@id='assignleave_txtFromDate']
    press key  xpath://input[@id='assignleave_txtFromDate']  2021-04-27
    click element  xpath://li[4]//img[1]
    sleep  5 seconds
    click element  xpath://input[@id='assignleave_txtToDate']
    click element  xpath://li[5]//img[1]
    click element  xpath://option[@value='full_day']
    input text  id:assignleave_txtComment   This is comment msg
    click button  Assign
    close browser