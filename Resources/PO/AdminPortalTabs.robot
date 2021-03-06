*** Settings ***
Documentation  This page contains elements for all tabs buttons, 
...            As we want to confirm that each Admin has a permission to see a specific tab
Library  SeleniumLibrary 


*** Variables ***
${home_tab_button}  xpath=//button[contains(.,'Home')]
${shifts_tab_button}  xpath=//button[contains(.,'Shifts')]
${buildings_tab_button}  xpath=//button[contains(.,'Buildings')]
${people_tab_button}  xpath=//button[contains(.,'People')]
${access_tab_button}  xpath=//button[contains(.,'Access')]
${analytics_tab_button}  xpath=//button[contains(.,'Analytics')]
${settings_tab_button}  xpath=//button[contains(.,'Settings')]

*** Keywords ***
Click on Home tab    
    Wait Until Element Is Visible    xpath=//button[contains(.,'Home')]
    Click Element    xpath=//button[contains(.,'Home')]
Click on Shifts tab
    Wait Until Element Is Visible    xpath=//button[contains(.,'Shifts')]
    Click Element    xpath=//button[contains(.,'Shifts')]
Click on Buildings tab    
    Wait Until Element Is Visible    xpath=//button[contains(.,'Buildings')]
    Click Element    xpath=//button[contains(.,'Buildings')]
Click on People tab    
    Wait Until Element Is Visible    xpath=//button[contains(.,'People')]
    Click Element    xpath=//button[contains(.,'People')]
Click on Access tab
    Wait Until Element Is Visible    xpath=//button[contains(.,'Access')]
    Click Element    xpath=//button[contains(.,'Access')]
Click on Analytics tab    
    Wait Until Element Is Visible    xpath=//button[contains(.,'Analytics')]
    Click Element    xpath=//button[contains(.,'Analytics')]
Click Settings tab
    Wait Until Element Is Visible    xpath=//button[contains(.,'Settings')]
    Click Element    xpath=//button[contains(.,'Settings')]
Subscription Admin can see all tabs
    Wait Until Element Is Visible    ${home_tab_button}
    Wait Until Element Is Visible    ${shifts_tab_button}
    Wait Until Element Is Visible    ${buildings_tab_button}
    Wait Until Element Is Visible    ${people_tab_button}
    Wait Until Element Is Visible    ${access_tab_button} 
    Wait Until Element Is Visible    ${analytics_tab_button}
    Wait Until Element Is Visible    ${settings_tab_button}
Building Admin can see all tabs
    Wait Until Element Is Visible     ${home_tab_button}
    Wait Until Element Is Visible     ${shifts_tab_button}
    Wait Until Element Is Visible     ${buildings_tab_button}
    Wait Until Element Is Visible     ${people_tab_button}
    Wait Until Element Is Visible     ${access_tab_button} 
    Wait Until Element Is Visible     ${analytics_tab_button}
    Wait Until Element Is Visible     ${settings_tab_button}
Shift Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs, but not Buildings tab
    Wait Until Element Is Visible     ${home_tab_button}
    Wait Until Element Is Visible     ${shifts_tab_button}
    Wait Until Element Is Not Visible    ${buildings_tab_button}
    Wait Until Element Is Visible     ${people_tab_button}
    Wait Until Element Is Visible     ${access_tab_button} 
    Wait Until Element Is Visible     ${analytics_tab_button}
    Wait Until Element Is Visible     ${settings_tab_button}
Shift Assistant Admin see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab
    Wait Until Element Is Visible     ${home_tab_button}
    Wait Until Element Is Visible    ${shifts_tab_button}
    Wait Until Element Is Not Visible     ${buildings_tab_button}
    Wait Until Element Is Visible     ${people_tab_button}
    Wait Until Element Is Not Visible    ${access_tab_button} 
    Wait Until Element Is Not Visible     ${analytics_tab_button}
    Wait Until Element Is Visible     ${settings_tab_button}
Shift Host Admin see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab
    Wait Until Element Is Visible     ${home_tab_button}
    Wait Until Element Is Visible     ${shifts_tab_button}
    Wait Until Element Is Not Visible    ${buildings_tab_button}
    Wait Until Element Is Not Visible     ${people_tab_button}
    Wait Until Element Is Not Visible    ${access_tab_button} 
    Wait Until Element Is Not Visible    ${analytics_tab_button}
    Wait Until Element Is Visible     ${settings_tab_button}
Analytics Viewer see Analytics tab only
    Wait Until Element Is Not Visible    ${home_tab_button}
    Wait Until Element Is Not Visible    ${shifts_tab_button}
    Wait Until Element Is Not Visible     ${buildings_tab_button}
    Wait Until Element Is Not Visible     ${people_tab_button}
    Wait Until Element Is Not Visible    ${access_tab_button} 
    Wait Until Element Is Visible     ${analytics_tab_button}
    Wait Until Element Is Not Visible     ${settings_tab_button}
