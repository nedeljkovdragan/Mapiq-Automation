*** Settings ***
Documentation  Login to Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/Login_Office_Shifts.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://admin-test.mapiq-universe.com/#

*** Test cases ***
Login into the Admin Portal as a Subscription Admin   
    Subscription Admin Login
Subscription Admin can see all tabs
    Subscription Admin Login
    Subscription Admin Permissions to see all tabs
