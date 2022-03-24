*** Settings ***
Documentation  Tests for a Shift Assistans Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/ShiftAssistantAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://admin-test.mapiq-universe.com/#

*** Test cases ***
Login into the Admin Portal as a Shift Assistant Admin   
    Shift Assistant Admin Login
Shift Assistant Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs but not Buildings tab
    Shift Assistant Admin Login
    Shift Assistant Admin Permissions to see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab