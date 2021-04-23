*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome
${UploadFiletest}   xpath=//input[@id='jobTitle_jobSpec']
${AddFile}  C:/Users/rvadi/Downloads/Urmila Vadi (Software Test Engineer).pdf

*** Test Cases ***
Job Titles

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
    click button  Add
    input text    id:jobTitle_jobTitle    QA Engin
    input text  id:jobTitle_jobDescription  This is Qa Job description
    #Wait Until Page Contains Element  ${UploadFiletest}  60s
    # press key  xpath=//input[@id='jobTitle_jobSpec']
    # click element  xpath=//input[@id='jobTitle_jobSpec']
    Choose File  xpath=//input[@id='jobTitle_jobSpec']  C:/Users/rvadi/Downloads/Urmila Vadi (Software Test Engineer).pdf
    input text  xpath://textarea[@id='jobTitle_note']   This is Testing Note
    click button  Save
    # close browser



