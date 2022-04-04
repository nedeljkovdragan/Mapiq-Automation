*** Settings ***
Documentation  This page contains elements for the log in flow for Office Shifts
Library  SeleniumLibrary
Resource  ../../Resources/SetupTeardown.robot 

*** Variables ***
${URL_OFFICE_SHIFTS}
${office_shifts_header_title}  xpath=/html//h1[@class='Header-title']
${os_first_sign_in_button}  xpath:/html//log-in[@class='Body Login-body']//button[@class='MpqButton'] 
${os_email_address_field}  id=signInName  
${continue_button}  xpath:/html//button[@id='continue']
${os_password_field}  xpath:/html//input[@id='password']
${os_second_sign_in_button}  xpath:/html//button[@id='next']
${email_analytics_viewer}  qa_building_admin@test1.mapiq.net 
${password_analytics_viewer}  QA-Bu1ld1ng-Adm1n

*** Keywords ***
Navigate To  
    Go to  ${URL_OFFICE_SHIFTS}
Verify Page Loaded
    Wait Until Element Contains    ${os_first_sign_in_button}    Sign in
Log in 
    Click Button    ${os_first_sign_in_button}
    Wait Until Element Is Visible    ${continue_button}
    Input Text  ${os_email_address_field}  ${email_analytics_viewer}
    Click Button  ${continue_button}
    Wait Until Element Is Visible    ${os_second_sign_in_button}
    Input Text    ${os_password_field}    ${password_analytics_viewer} 
    Click Button    ${os_second_sign_in_button}
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Wait Until Element Is Visible    ${office_shifts_header_title}
