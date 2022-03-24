*** Settings ***
Documentation  Tests for a Shift Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/ShiftAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://admin-test.mapiq-universe.com/#

*** Test cases ***
Login into the Admin Portal as a Shift Admin   
    Shift Admin Login
Shift Admin Permissions
    Shift Admin Login
    Shift Admin has Permissions to see Home, Shifts, People, Access, Analytics, and Settings tabs but not Buildings tab