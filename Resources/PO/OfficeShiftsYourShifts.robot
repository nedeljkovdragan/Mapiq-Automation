*** Settings ***
Documentation  This page contains all buttons and 
...            input fields variables for the Office shifts 
...            "Your Shifts"/"Home" page
...
Library  SeleniumLibrary 

*** Variables ***
${current_day}  css=.is-today
${day_overview_book_button}  css=.DayOverview-bookButton
${show_all_workspaces_button}  xpath=/html/body//popup-manager//div[@class='Card-scrollHeight']//rw-home//div[@class='RegistrationWizard-tile']
${first_building}  css=.LocationPicker-option:nth-child(1)
${second_building}  css=.LocationPicker-option:nth-child(2)
${first_floor}  css=.LocationPicker-group:nth-child(4) > .LocationPicker-option:nth-child(1)
${first_area}  css=.LocationPicker-group:nth-child(6) > .LocationPicker-option:nth-child(1)
${confirm_booking_button}  xpath=//span[contains(.,'Confirm booking')]
${status_message}  xpath=/html/body//status-message[@class='Card']//div[@class='status-message']
${booked_shift_checkmark_button}  css=.is-today svg   #This one is the same as the variable for the current day, so that will have to be changed at some point
${edit_shift_button}  xpath=/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']/rw-booked-shift-summary//button[@class='MpqLinkButton Summary-editBtn']
${modify_booking_button}  xpath=//span[contains(.,'Modify booking')]
${delete_shift_button}  xpath=/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//button[@class='MpqButton MpqButton--app MpqButton--red']


${i_am_here_button}  css=.CheckInTile-comingButton
${i_am_not_coming_button}  xpath=[data-bind='click\: handleNotComingButtonClick\, clickBubble\: false\,visible\:notComingButtonIsVisible']
${status_button}  xpath=//div/div[2]/button



${not_at_the_office_popup_button}  xpath=/html/body//page-content//calendar-view/div[@class='CalendarView weekCount-3']/div[@class='CalendarView-topTiles']/div/check-in-status-selector//div[@class='CheckInStatusSelector-options']/div[2]
${not_at_the_office_status}  xpath=//body//page-content//calendar-view/div[@class='CalendarView weekCount-3']/div[@class='CalendarView-topTiles']/div/check-in-status-selector//span[@class='CheckInStatusSelector-label']
*** Keywords ***
Booking a shift for a current day, first building
    Wait Until Element Is Visible    ${current_day}
    Click Element    ${current_day}
    Wait Until Element Is Visible   ${day_overview_book_button}
    Click Element    ${day_overview_book_button}
    Wait Until Element Is Visible  ${show_all_workspaces_button}
    Click Element    ${show_all_workspaces_button}
    Wait Until Element Is Visible  ${first_building}
    Click Element    ${first_building}
    Wait Until Element Is Visible  ${first_floor}
    Click Element    ${first_floor}
    Wait Until Element Is Visible  ${first_area}
    Click Element    ${first_area}
    Wait Until Element Is Visible  ${confirm_booking_button}
    Click Element    ${confirm_booking_button}
    Sleep  1
    Element Should Contain    ${status_message}   You’re good to go to the office
Edit a current day shift
    Wait Until Element Is Visible  ${booked_shift_checkmark_button}
    Click Element    ${booked_shift_checkmark_button}
    Wait Until Element Is Visible  ${edit_shift_button}
    Click Element    ${edit_shift_button}
    Wait Until Element Is Visible  ${show_all_workspaces_button}
    Click Element    ${show_all_workspaces_button}
    Wait Until Element Is Visible  ${second_building}
    Click Element    ${second_building}
    Wait Until Element Is Visible  ${first_floor}
    Click Element    ${first_floor}
    Wait Until Element Is Visible  ${modify_booking_button}
    Click Element    ${modify_booking_button}
    Sleep  1
    Element Should Contain    ${status_message}  Location successfully updated 
Delete a current day shift
    Wait Until Element Is Visible  ${booked_shift_checkmark_button}
    Click Element    ${booked_shift_checkmark_button}
    Wait Until Element Is Visible  ${delete_shift_button}
    Click Element    ${delete_shift_button}
    Sleep  5
    Wait Until Element Is Visible  ${CURRENT_DAY}
    Element Should Be Visible    ${CURRENT_DAY}
End User checks in for today  #For this one you need to have a booked shift for a current day
    Wait Until Element Is Visible  ${i_am_here_button}
    Click Element    ${i_am_here_button} 
    Wait Until Element Is Visible  ${STATUS_BUTTON}
    Element Should Contain    ${status_button}      At the office
End User sets "Not at the Office status"
    Wait Until Element Is Visible  ${status_button} 
    Click Element    ${status_button}  
    Wait Until Element Is Visible  ${not_at_the_office_popup_button}
    Click Element    ${not_at_the_office_popup_button}
    Wait Until Element Is Visible  ${not_at_the_office_status}
    Element Should Contain    ${not_at_the_office_status}   Not at the office



    