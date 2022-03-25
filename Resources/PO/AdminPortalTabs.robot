*** Settings ***
Documentation  This page contains elements for all tabs buttons, 
...            As we want to confirm that each Admin has a permission to see a specific tab
Library  SeleniumLibrary 


*** Variables ***
${HOME_TAB_BUTTON}  xpath=//button[contains(.,'Home')]
${SHIFTS_TAB_BUTTON}  xpath=//button[contains(.,'Shifts')]
${BUILDINGS_TAB_BUTTON}  xpath=//button[contains(.,'Buildings')]
${PEOPLE_TAB_BUTTON}  xpath=//button[contains(.,'People')]
${ACCESS_TAB_BUTTON}  xpath=//button[contains(.,'Access')]
${ANALYTICS_TAB_BUTTON}  xpath=//button[contains(.,'Analytics')]
${SETTINGS_TAB_BUTTON}  xpath=//button[contains(.,'Settings')]

*** Keywords ***
Subscription Admin can see all tabs
    Element Should Be Visible    ${HOME_TAB_BUTTON}
    Element Should Be Visible    ${SHIFTS_TAB_BUTTON}
    Element Should Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Be Visible    ${ACCESS_TAB_BUTTON}
    Element Should Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  5
Building Admin can see all tabs
    Element Should Be Visible    ${HOME_TAB_BUTTON}
    Element Should Be Visible    ${SHIFTS_TAB_BUTTON}
    Element Should Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Be Visible    ${ACCESS_TAB_BUTTON}
    Element Should Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  5
Shift Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs, but not Buildings tab
    Element Should Be Visible    ${HOME_TAB_BUTTON}
    Element Should Be Visible    ${SHIFTS_TAB_BUTTON}
    Element Should Not Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Be Visible    ${ACCESS_TAB_BUTTON}
    Element Should Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  7
Shift Assistant Admin see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab
    Element Should Be Visible    ${HOME_TAB_BUTTON}
    Element Should Be Visible    ${SHIFTS_TAB_BUTTON}
    Element Should Not Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Not Be Visible   ${ACCESS_TAB_BUTTON}
    Element Should Not Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  7
Shift Host Admin see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab
    Element Should Be Visible    ${HOME_TAB_BUTTON}
    Element Should Be Visible    ${SHIFTS_TAB_BUTTON}
    Element Should Not Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Not Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Not Be Visible   ${ACCESS_TAB_BUTTON}
    Element Should Not Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  7
Analytics Viewer see Analytics tab only
    Element Should Not Be Visible   ${HOME_TAB_BUTTON}
    Element Should Not Be Visible   ${SHIFTS_TAB_BUTTON}
    Element Should Not Be Visible    ${BUILDINGS_TAB_BUTTON}
    Element Should Not Be Visible    ${PEOPLE_TAB_BUTTON}
    Element Should Not Be Visible   ${ACCESS_TAB_BUTTON}
    Element Should Be Visible    ${ANALYTICS_TAB_BUTTON}
    Element Should Not Be Visible    ${SETTINGS_TAB_BUTTON}
    Sleep  7