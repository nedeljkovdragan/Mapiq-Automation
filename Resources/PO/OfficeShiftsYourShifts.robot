*** Settings ***
Documentation  This page contains all buttons and 
...            input fields variables for the Office shifts 
...            "Your Shifts"/"Home" page
...
Library  SeleniumLibrary 

*** Variables ***
${CURRENT_DAY}  xpath://body//page-content//calendar-view//ul[@class='CalendarView-weeks']/li[1]/ul[@class='CalendarView-days']//div[@class='CalendarView-day is-today']
${SIDEBAR_PLUS_BUTTON}  xpath:/html/body/side-panel/div//div[@class='SidePanel-body']/div[1]/div[2]/button
${SHOW_ALL_WORKSPACES_BUTTON}  xpath:/html/body//popup-manager//div[@class='Card-scrollHeight']//rw-home/div/div[2]
${FIRST_BUILDING}  xpath:/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']//div[@class='LocationPicker-group']/div[1]
${SECOND_BUILDING}  xpath:/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']//div[@class='LocationPicker-group']/div[2]
${FIRST_FLOOR}  xpath:/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']/div/div[4]/div[1]
${CONFIRM_BOOKING_BUTTON}  xpath:/html/body//popup-manager//div[@class='Card-footer']//button[@class='MpqButton MpqButton--app']
${BOOKING_SUCCESS_MESSAGE}  xpath:/html/body//status-message[@class='Card']//div[@class='status-message']
${EDIT_BOOKED_SHIFT_MESSAGE}  xpath:/html/body//status-message[@class='Card']//div[@class='status-message']
${BOOKED_SHIFT_CHECKMARK_BUTTON}  css=.CalendarView-day.is-booked.is-today .CalendarView-action.CalendarView-action--green > svg
${EDIT_SHIFT_BUTTON}  xpath:/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//div[@class='Card-scrollHeight']/rw-booked-shift-summary//button[@class='MpqLinkButton Summary-editBtn']
${MODIFY_BOOKING_BUTTON}  xpath:/html/body//popup-manager//div[@class='Card-footer']//button[@class='MpqButton MpqButton--app']
${DELETE_SHIFT_BUTTON}  xpath:/html/body//popup-manager/div[@class='ModalWrapper ModalWrapper--popupManager']//button[@class='MpqButton MpqButton--app MpqButton--red']
*** Keywords ***
Booking a shift for a current day, first building
    Sleep   5
    Click Element    ${CURRENT_DAY}
    Sleep   2
    Click Element    ${SIDEBAR_PLUS_BUTTON}
    Sleep   2
    Click Element    ${SHOW_ALL_WORKSPACES_BUTTON}
    Sleep   2
    Click Element    ${FIRST_BUILDING}
    Sleep   2 
    Click Element    ${FIRST_FLOOR}
    Sleep   2
    Click Element    ${CONFIRM_BOOKING_BUTTON}
    Sleep   2
    Element Should Contain    ${BOOKING_SUCCESS_MESSAGE}    You’re good to go to the office
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
    Click Element    ${MODIFY_BOOKING_BUTTON}
    Sleep   2
    Element Should Contain    ${EDIT_BOOKED_SHIFT_MESSAGE}   Location successfully updated
    Sleep   2   
Delete a current day shift
    Sleep   2
    Click Element    ${BOOKED_SHIFT_CHECKMARK_BUTTON}
    Click Element    ${DELETE_SHIFT_BUTTON}
    Sleep  2
    Element Should Be Visible    ${CURRENT_DAY}
    Sleep  2