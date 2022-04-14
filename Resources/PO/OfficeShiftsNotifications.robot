*** Settings ***
Documentation  This page contains all buttons and input fields variables for the Office shifts "Notifications" page
...            
Library  SeleniumLibrary 

*** Variables ***
${notifications_button}  css=.Header-menu > .Bar > button:nth-of-type(3) > mpq-icon  svg
${last_notification}  css=.NotificationsView > div:nth-of-type(1)
*** Keywords ***
"Notifications" click
    Wait Until Element Is Visible    ${notifications_button}
    Click Element    ${notifications_button}
Notification received for booked shift by Admin
    Wait Until Element Is Visible  ${last_notification}
    Sleep  3
    Element Should Contain    ${last_notification}    less than a minute ago  
    Element Should Contain    ${last_notification}    A shift has been booked for you  
Notification received for updated shift
    Wait Until Element Is Visible  ${last_notification}
    Sleep  3
    Element Should Contain    ${last_notification}    less than a minute ago  
    Element Should Contain    ${last_notification}  Your shift has been updated 
Notification received for deleted shift    
    Wait Until Element Is Visible  ${last_notification}
    Sleep  3
    Element Should Contain    ${last_notification}    less than a minute ago  
    Element Should Contain    ${last_notification}   Your shift has been deleted
