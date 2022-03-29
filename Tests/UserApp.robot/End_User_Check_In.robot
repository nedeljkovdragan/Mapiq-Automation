*** Settings ***
Documentation  Login to Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/End_User_Check_In.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://shifts-test.atlas.mapiq-universe.com/

*** Test cases ***
End User checks in
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    End user checks in for the current day
End User sets status to "Not at the office" 
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    End User sets the status to "Not at the office"
    