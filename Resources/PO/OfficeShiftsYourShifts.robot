*** Settings ***
Documentation  This page contains all buttons and 
...            input fields variables for the Office shifts 
...            "Your Shifts"/"Home" page
...
Library  SeleniumLibrary 

*** Variables ***
${YOUR_PROFILE_BUTTON}  css:.Header-right [data-bind='click\: showProfilePage']
${SIGN_OUT_BUTTON_OFFICE_SHIFTS}  css:.ProfilePage section:nth-child(2) button
*** Keywords ***
Sign Out of the Office Shifts
    Click Button    ${YOUR_PROFILE_BUTTON}
    Sleep  5
    Click Button    ${SIGN_OUT_BUTTON_OFFICE_SHIFTS}
    Sleep  3
