*** Settings ***
Library  SeleniumLibrary 


*** Variables ***
${HOME_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[1]
${SHIFTS_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[2]
${BUILDINGS_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[3]
${PEOPLE_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[4]
${ACCESS_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[5]
${ANALYTICS_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[6]
${SETTINGS_TAB_BUTTON}  xpath://body/header[@class='Header']//tab-viewer//div[@class='TabViewer-header']/button[7]

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
