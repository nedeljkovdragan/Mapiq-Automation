*** Settings ***
Documentation  Login to Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/Connections.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Resource  ../../Resources/AdminPortalPage.robot

Test Setup  Begin Web Test Office Shifts 
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Add a connection (Building Admin adding a Subscription Admin)
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on "Your Connections"
    Add a Subscription Admin as a connection
Subscription Admin accepts the connection
    Subscription Admin Login
    Subscription Admin accepts the connection of a Building Admin
Delete a connection as a Building Admin
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on "Your Connections"
    Delete a Subscription Admin connection
    