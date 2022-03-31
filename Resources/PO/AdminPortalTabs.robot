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
    Wait Until Element Is Visible    ${HOME_TAB_BUTTON}
    Wait Until Element Is Visible    ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Visible    ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Visible    ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Visible    ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Visible    ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Visible    ${SETTINGS_TAB_BUTTON}
Building Admin can see all tabs
    Wait Until Element Is Visible     ${HOME_TAB_BUTTON}
    Wait Until Element Is Visible     ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Visible     ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Visible     ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Visible     ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Visible     ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Visible     ${SETTINGS_TAB_BUTTON}
Shift Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs, but not Buildings tab
    Wait Until Element Is Visible     ${HOME_TAB_BUTTON}
    Wait Until Element Is Visible     ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Visible     ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Visible     ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Visible     ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Visible     ${SETTINGS_TAB_BUTTON}
Shift Assistant Admin see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab
    Wait Until Element Is Visible     ${HOME_TAB_BUTTON}
    Wait Until Element Is Visible    ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Visible     ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Visible     ${SETTINGS_TAB_BUTTON}
Shift Host Admin see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab
    Wait Until Element Is Visible     ${HOME_TAB_BUTTON}
    Wait Until Element Is Visible     ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Visible     ${SETTINGS_TAB_BUTTON}
Analytics Viewer see Analytics tab only
    Wait Until Element Is Not Visible    ${HOME_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${SHIFTS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${BUILDINGS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${PEOPLE_TAB_BUTTON}
    Wait Until Element Is Not Visible    ${ACCESS_TAB_BUTTON}
    Wait Until Element Is Visible     ${ANALYTICS_TAB_BUTTON}
    Wait Until Element Is Not Visible     ${SETTINGS_TAB_BUTTON}