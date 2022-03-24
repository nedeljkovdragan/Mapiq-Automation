*** Settings ***
Documentation  Tests for a Shift Assistans Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/ShiftAssistantAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://admin-test.mapiq-universe.com/#

*** Test cases ***
Login into the Admin Portal as a Shift Host Admin   
    Shift Host Admin Login
Shift Host Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs but not Buildings tab
    Shift Host Admin Login
    Shift Host Admin has Permissions to see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab