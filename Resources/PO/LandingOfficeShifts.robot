*** Settings ***
Documentation  This page contains elements for the log in flow for Office Shifts
Library  SeleniumLibrary 

*** Variables ***
${URL} =  https://shifts-test.atlas.mapiq-universe.com/
${OFFICE_SHIFTS_HEADER_TITLE}  xpath=/html//h1[@class='Header-title']
${OS_FIRST_SIGN_IN_BUTTON}  xpath:/html//log-in[@class='Body Login-body']//button[@class='MpqButton'] 
${OS_EMAIL_ADDRESS_FIELD}  id=signInName  
${CONTINUE_BUTTON}  xpath:/html//button[@id='continue']
${OS_PASSWORD_FIELD}  xpath:/html//input[@id='password']
${OS_SECOND_SIGN_IN_BUTTON}  xpath:/html//button[@id='next']
${EMAIL_ANALYTICS_VIEWER}  qa_building_admin@test1.mapiq.net 
${PASSWORD_ANALYTICS_VIEWER}  QA-Bu1ld1ng-Adm1n

*** Keywords ***
Navigate To  
    Go to  ${URL} 
Verify Page Loaded
    Wait Until Element Contains    ${OS_FIRST_SIGN_IN_BUTTON}    Sign in
Log in 
    Click Button    ${OS_FIRST_SIGN_IN_BUTTON}
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    Input Text  ${OS_EMAIL_ADDRESS_FIELD}  ${EMAIL_ANALYTICS_VIEWER}
    Click Button  ${CONTINUE_BUTTON}
    Wait Until Element Is Visible    ${OS_SECOND_SIGN_IN_BUTTON}
    Input Text    ${OS_PASSWORD_FIELD}    ${PASSWORD_ANALYTICS_VIEWER}
    Click Button    ${OS_SECOND_SIGN_IN_BUTTON}
    Wait Until Element Is Visible    ${OFFICE_SHIFTS_HEADER_TITLE}
    Wait Until Element Is Visible    ${OFFICE_SHIFTS_HEADER_TITLE}
