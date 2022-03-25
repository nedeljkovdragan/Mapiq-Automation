*** Settings ***
Documentation  Tests for a Subscription Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/SubscriptionAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
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
    Subscription Admin has Permissions to see all tabs
