*** Settings ***
Documentation  This page contains elements for all People tab buttons, elements, search fields etc.
...            
Library  SeleniumLibrary 


*** Variables ***
${people_tab_search_field}  xpath=/html/body/div/tab-viewer//div[@class='TabViewer-body']/div[4]/div[@class='TabCard-wrapper']/div[2]/search-bar//input[@class='SearchBar-search--input']
${building_admin_account_result}  css=td[title='Building']
${current_day}  css=.CalendarView-day.is-today
${first_building}  css=.LocationPicker-group > div:nth-of-type(1)
${second_building}  css=.Card-scrollHeight > div:nth-of-type(2) > div:nth-of-type(2)
${first_floor}  css=.Card-scrollHeight > div:nth-of-type(4) > div:nth-of-type(1)
${second_floor}  css=.Card-scrollHeight > div:nth-of-type(4) > div:nth-of-type(2)
${first_area}  css=.Card-scrollHeight > div:nth-of-type(6) > div:nth-of-type(1)
${second_area}  css=.Card-scrollHeight > div:nth-of-type(6) > div:nth-of-type(2)
${office_button}  css=.Card-scrollHeight > div:nth-of-type(1)
${edit_button}  xpath=/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']//button[@class='MpqLinkButton Summary-editBtn']
${confirm_booking_button}  xpath=/html/body//popup-manager//button[@class='MpqButton MpqButton--app']
${confirmation_popup_window}  css=.PromiseConfirmationModal-popup
${delete_button}  xpath=/html/body//popup-manager//button[@class='MpqButton MpqButton--app MpqButton--red']
${delete_button_popup}  xpath=/html/body/div[@class='Body']/tab-viewer//div[@class='TabViewer-body']//user-shifts-editor//confirmation-window[@class='Card']//button[@class='MpqButton MpqButton--red']
*** Keywords ***
Search for a building admin and click on its account
    Wait Until Element Is Visible    ${people_tab_search_field}
    Input Text    ${people_tab_search_field}    Building    
    Wait Until Element Is Visible    ${building_admin_account_result}
    Click Element    ${building_admin_account_result}
Book a shift as Admin
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}
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
Edit a shift as an Admin
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}
    Wait Until Element Is Visible  ${edit_button}
    Click Element  ${edit_button}
    Wait Until Element Is Visible  ${office_button}
    Click Element  ${office_button}
    Wait Until Element Is Visible  ${second_building}
    Click Element  ${second_building}
    Wait Until Element Is Visible  ${second_floor}
    Click Element  ${second_floor}
    Wait Until Element Is Visible  ${second_area}
    Click Element  ${second_area}
    Wait Until Element Is Visible  ${confirm_booking_button}
    Sleep  3
    Click Element  ${confirm_booking_button}
    Wait Until Element Is Visible    ${confirmation_popup_window}
Delete a shift as Admin
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}
    Wait Until Element Is Visible    ${delete_button}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${delete_button_popup}
    Click Element    ${delete_button_popup}
    Wait Until Element Is Visible    ${confirmation_popup_window}