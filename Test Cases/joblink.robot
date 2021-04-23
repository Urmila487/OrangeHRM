*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome


*** Test Cases ***
Joblink

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
    click element  xpath://a[normalize-space()='Job Titles']
    sleep  3 seconds
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    click element  xpath://a[normalize-space()='QA Engin']
    sleep  3 seconds
    click element  xpath://input[@id='btnCancel']




