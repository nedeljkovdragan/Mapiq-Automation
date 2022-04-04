*** Settings ***
Library  SeleniumLibrary 

*** Variables ***
${BROWSER} =  chrome
${URL_ADMIN_PORTAL}  https://admin-test.mapiq-universe.com/#
${URL_OFFICE_SHIFTS}  https://shifts-test.atlas.mapiq-universe.com/

*** Keywords ***
Begin Web Test Admin portal
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Go To  ${URL_ADMIN_PORTAL}
Begin Web Test Office Shifts    
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window
    Go To  ${URL_OFFICE_SHIFTS}
End Web Test
    Close All Browsers