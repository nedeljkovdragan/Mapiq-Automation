*** Settings ***
Documentation  Login to Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/Login_Office_Shifts.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://shifts-test.atlas.mapiq-universe.com/

*** Test cases ***
Login into the Office Shifts 
    Go to the Office Shifts Page
    Log in to the Office Shifts Page

    