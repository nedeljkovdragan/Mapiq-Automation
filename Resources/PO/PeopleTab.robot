*** Settings ***
Documentation  This page contains elements for all People tab buttons, elements, search fields etc.
...            
Library  SeleniumLibrary 


*** Variables ***
${people_tab_search_field}  xpath=/html/body/div/tab-viewer//div[@class='TabViewer-body']/div[4]/div[@class='TabCard-wrapper']/div[2]/search-bar//input[@class='SearchBar-search--input']
${building_admin_account_result}  css=td[title='Building']
${current_day}  css=.CalendarView-day.is-today
*** Keywords ***
Search for a building admin and click on its account
    Wait Until Element Is Visible    ${people_tab_search_field}
    Input Text    ${people_tab_search_field}    Building    
    Wait Until Element Is Visible    ${building_admin_account_result}
    Click Element    ${building_admin_account_result}
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}