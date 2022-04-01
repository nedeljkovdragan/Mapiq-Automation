*** Settings ***
Documentation  Logout of the Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/End_User_Logout.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test Office Shifts 
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
User logs of the Office Shifts 
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Logout of the Office Shifts Page

    