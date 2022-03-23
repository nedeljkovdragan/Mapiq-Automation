*** Settings ***
Library  SeleniumLibrary 

*** Variables ***


*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Go To  ${URL}
    Maximize Browser Window
End Web Test
    Close All Browsers