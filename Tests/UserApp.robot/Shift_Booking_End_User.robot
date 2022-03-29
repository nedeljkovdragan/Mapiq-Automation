*** Settings ***
Documentation  Test for confirming an option to book a shift on the Office Shifts page by a End User
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/Shift_Booking_End_User.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://shifts-test.atlas.mapiq-universe.com/

*** Test cases ***
Book a shift as an End User for a current day
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Book a shift for a current day, for the first building
Edit a shift as an End User for a current day
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Edit a shift for a current day
Delete a shift for a current day    
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Delete a shift for a current day