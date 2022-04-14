*** Settings ***
Documentation  This page contains elements for all People tab buttons, elements, search fields etc.
...            
Library  SeleniumLibrary 


*** Variables ***
${people_tab_search_field}  xpath=/html/body/div/tab-viewer//div[@class='TabViewer-body']/div[4]/div[@class='TabCard-wrapper']/div[2]/search-bar//input[@class='SearchBar-search--input']
${building_admin_account_result}  css=td[title='Building']
${current_day}  css=.CalendarView-day.is-today
${first_building}  css=.LocationPicker-group > div:nth-of-type(1)
${first_floor}  css=.Card-scrollHeight > div:nth-of-type(4) > div:nth-of-type(1)
${first_area}  css=.Card-scrollHeight > div:nth-of-type(6) > div:nth-of-type(1)
${confirm_booking_button}  xpath=/html/body//popup-manager//button[@class='MpqButton MpqButton--app']
${confirmation_popup_window}  css=.PromiseConfirmationModal-popup
*** Keywords ***
Search for a building admin and click on its account
    Wait Until Element Is Visible    ${people_tab_search_field}
    Input Text    ${people_tab_search_field}    Building    
    Wait Until Element Is Visible    ${building_admin_account_result}
    Click Element    ${building_admin_account_result}
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}
Book a shift as Admin
    Wait Until Element Is Visible  ${first_building}
    Click Element  ${first_building}
    Wait Until Element Is Visible  ${first_floor}
    Click Element  ${first_floor}
    Wait Until Element Is Visible  ${first_area}
    Click Element  ${first_area}
    Wait Until Element Is Visible  ${confirm_booking_button}
    Sleep  3
    Click Element  ${confirm_booking_button}
    Wait Until Element Is Visible    ${confirmation_popup_window}

