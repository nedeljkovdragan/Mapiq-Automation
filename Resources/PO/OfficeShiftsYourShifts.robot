*** Settings ***
Documentation  This page contains all buttons and 
...            input fields variables for the Office shifts 
...            "Your Shifts"/"Home" page
...
Library  SeleniumLibrary 

*** Variables ***
${CURRENT_DAY}  css=.is-today
${DAY_OVERVIEW_BOOK_BUTTON}  css=.DayOverview-bookButton
${SHOW_ALL_WORKSPACES_BUTTON}  xpath=/html/body//popup-manager//div[@class='Card-scrollHeight']//rw-home//div[@class='RegistrationWizard-tile']
${FIRST_BUILDING}  css=.LocationPicker-option:nth-child(1)
${SECOND_BUILDING}  css=.LocationPicker-option:nth-child(2)
${FIRST_FLOOR}  css=.LocationPicker-group:nth-child(4) > .LocationPicker-option:nth-child(1)
${FIRST_AREA}  css=.LocationPicker-group:nth-child(6) > .LocationPicker-option:nth-child(1)
${CONFIRM_BOOKING_BUTTON}  xpath=//span[contains(.,'Confirm booking')]
${STATUS_MESSAGE}  xpath=/html/body//status-message[@class='Card']//div[@class='status-message']
${BOOKED_SHIFT_CHECKMARK_BUTTON}  css=.is-today svg   #This one is the same as the variable for the current day, so that will have to be changed at some point
${EDIT_SHIFT_BUTTON}  xpath=/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']/rw-booked-shift-summary//button[@class='MpqLinkButton Summary-editBtn']
${MODIFY_BOOKING_BUTTON}  xpath=//span[contains(.,'Modify booking')]
${DELETE_SHIFT_BUTTON}  xpath=/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//button[@class='MpqButton MpqButton--app MpqButton--red']


${I_AM_HERE_BUTTON}  css=.CheckInTile-comingButton
${I_AM_NOT_COMING_BUTTON}  xpath=[data-bind='click\: handleNotComingButtonClick\, clickBubble\: false\,visible\:notComingButtonIsVisible']
${STATUS_BUTTON}  xpath=//div/div[2]/button



${NOT_AT_THE_OFFICE_POPUP_BUTTON}  xpath=/html/body//page-content//calendar-view/div[@class='CalendarView weekCount-3']/div[@class='CalendarView-topTiles']/div/check-in-status-selector//div[@class='CheckInStatusSelector-options']/div[2]
${NOT_AT_THE_OFFICE_STATUS}  xpath=//body//page-content//calendar-view/div[@class='CalendarView weekCount-3']/div[@class='CalendarView-topTiles']/div/check-in-status-selector//span[@class='CheckInStatusSelector-label']
*** Keywords ***
Booking a shift for a current day, first building
    Sleep   5
    Click Element    ${CURRENT_DAY}
    Sleep   2
    Click Element    ${DAY_OVERVIEW_BOOK_BUTTON}
    Sleep   2
    Click Element    ${SHOW_ALL_WORKSPACES_BUTTON}
    Sleep   2
    Click Element    ${FIRST_BUILDING}
    Sleep   2 
    Click Element    ${FIRST_FLOOR}
    Sleep   2
    Click Element    ${FIRST_AREA}
    Sleep   2
    Click Element    ${CONFIRM_BOOKING_BUTTON}
    Sleep   1
    Element Should Contain    ${STATUS_MESSAGE}    You’re good to go to the office
    Sleep   2
Edit a current day shift
    Sleep   2
    Click Element    ${BOOKED_SHIFT_CHECKMARK_BUTTON}
    Sleep   5
    Click Element    ${EDIT_SHIFT_BUTTON}
    Click Element    ${SHOW_ALL_WORKSPACES_BUTTON}
    Click Element    ${SECOND_BUILDING}
    Sleep   2 
    Click Element    ${FIRST_FLOOR}
    Sleep   2 
    Click Element    ${MODIFY_BOOKING_BUTTON}
    Sleep   1
    Element Should Contain    ${STATUS_MESSAGE}   Location successfully updated
    Sleep   1   
Delete a current day shift
    Sleep   2
    Click Element    ${BOOKED_SHIFT_CHECKMARK_BUTTON}
    Click Element    ${DELETE_SHIFT_BUTTON}
    Sleep  2
    Element Should Be Visible    ${CURRENT_DAY}
    Sleep  2
End User checks in for today  #For this one you need to have a booked shift for a current day
    Sleep  2
    Click Element    ${STATUS_BUTTON}
    Sleep  6
    Element Should Contain    ${STATUS_BUTTON}     At the office
    Sleep   1
End User sets "Not at the Office status"
    Sleep  2
    Click Element    ${STATUS_BUTTON} 
    Sleep  14
    Click Element    ${NOT_AT_THE_OFFICE_POPUP_BUTTON}
    Sleep  2
    Element Should Contain    ${NOT_AT_THE_OFFICE_STATUS}    Not at the office
    Sleep   1


    