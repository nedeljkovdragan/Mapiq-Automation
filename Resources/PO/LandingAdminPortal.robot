*** Settings ***
Documentation  This page contains elements for the log in flow for Admin Portal
Resource  ../../Resources/SetupTeardown.robot
Library  SeleniumLibrary 


*** Variables ***
${URL_ADMIN_PORTAL}
${admin_portal_first_sign_in_button}  //body/log-in[@class='Body Login-body']//button[@class='MpqButton']
${admin_portal_email_address_field}  id=signInName
${admin_portal_continue_button}  xpath:/html//button[@id='continue']
${admin_portal_password_field}  xpath:/html//input[@id='password']
${admin_portal_second_sign_in_button}  xpath:/html//button[@id='next']
${admin_portal_header_title}  xpath=//body/header[@class='Header']//h1[@class='Header-title']  
#Different Admin credentials:
${subscription_admin_email}  qa_subscription_admin@test1.mapiq.net
${subscription_admin_password}  QA-Subscr1pt1on-Adm1n
${building_admin_email}  qa_building_admin@test1.mapiq.net 
${building_admin_password}  QA-Bu1ld1ng-Adm1n
${shift_admin_email}  qa_shift_admin@test1.mapiq.net
${shift_admin_password}  QA-Sh1ft-Adm1n
${shift_assistant_email}  qa_shift_assistant@test1.mapiq.net
${shift_assistant_password}  QA-Sh1ft-Ass1stant
${shift_host_email}  qa_shift_host@test1.mapiq.net
${shift_host_password}  QA-Sh1ft-Host
${analytics_viewer_email}  qa_analytics_viewer@test1.mapiq.net
${analytics_viewer_password}  QA-Analyt1cs-V1ewer

*** Keywords ***
Navigate To  
    Go to  ${URL_ADMIN_PORTAL}
Verify Page Loaded
    Wait Until Element Contains    ${admin_portal_first_sign_in_button}    Sign in
Subscription Admin Logs in 
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${subscription_admin_email}
    Click Button  ${admin_portal_continue_button} 
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${SUBSCRIPTION_ADMIN_PASSWORD}
    Click Button    ${admin_portal_second_sign_in_button} 
    Wait Until Element Is Visible    ${admin_portal_header_title}
Building Admin logs in
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${building_admin_email}
    Click Button  ${admin_portal_continue_button} 
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${building_admin_password}
    Click Button    ${admin_portal_second_sign_in_button} 
    Wait Until Element Is Visible    ${admin_portal_header_title}
Shift Admin logs in
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${shift_admin_email}
    Click Button  ${admin_portal_continue_button} 
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${shift_admin_password}
    Click Button    ${admin_portal_second_sign_in_button} 
    Wait Until Element Is Visible    ${admin_portal_header_title}
Shift Assistant Admin logs in   
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${shift_assistant_email}
    Click Button  ${admin_portal_continue_button} 
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${shift_assistant_password}
    Click Button    ${admin_portal_second_sign_in_button} 
    Wait Until Element Is Visible    ${admin_portal_header_title}
Shift Host Admin logs in
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${shift_host_email}
    Click Button  ${admin_portal_continue_button} 
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${shift_host_password}
    Click Button    ${admin_portal_second_sign_in_button} 
    Wait Until Element Is Visible    ${admin_portal_header_title}
Analytics Viewer Admin logs in
    Click Button    ${admin_portal_first_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_continue_button}
    Input Text  ${admin_portal_email_address_field}  ${analytics_viewer_email}
    Click Button  ${admin_portal_continue_button}
    Wait Until Element Is Visible    ${admin_portal_second_sign_in_button}
    Input Text    ${admin_portal_password_field}    ${analytics_viewer_password}
    Click Button    ${admin_portal_second_sign_in_button}
    Wait Until Element Is Visible    ${admin_portal_header_title}