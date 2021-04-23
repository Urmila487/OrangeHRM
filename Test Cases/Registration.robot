*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.orangehrm.com/open-source/demo/
${browser}  Chrome

*** Test Cases ***
Create New Registartion TestCase
      Open Browser  ${url}  ${browser}
      maximize browser window
      wait until page contains element  xpath://img[@alt='OrangeHRM Inc Logo']
      input text  id:Form_submitRequest_FirstName   Urmila
      input text  id:Form_submitRequest_LastName    Ghadiya
      input text  id:Form_submitRequest_CompanyName    Bacancy Technology
      click element  xpath://select[@id='Form_submitRequest_Industry']
      sleep  3 seconds
      click element  xpath://option[@value='Aerospace']
      sleep  3 seconds
      input text  id:Form_submitRequest_JobTitle    QA Engineer
      input text  id:Form_submitRequest_Email   urmila.ghadiya@gmail.com
      input text  id:Form_submitRequest_Phone   9925039905
      click element  xpath://select[@id='Form_submitRequest_No_of_Employees']
      sleep  3 seconds
      select from list by index  name:No of Employees   3
      sleep  3 seconds
      click element  xpath://select[@id='Form_submitRequest_Country']
      select from list by index  name:Country   97
      sleep  3 seconds
      click element  xpath://select[@id='Form_submitRequest_State']
      select from list by index  name:State  7
      #click element  xpath://div[@id='Nocaptcha-Form_submitRequest_Captcha']
      #sleep  2 seconds
      #find element  id:Form_submitRequest_action_submitRequest
      click element  id:Form_submitRequest_action_submitRequest
      sleep  3 seconds
      close browser




  



