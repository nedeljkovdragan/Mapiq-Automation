*** Settings ***
Documentation  Tests for a Building Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/SubscriptionAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://admin-test.mapiq-universe.com/#

*** Test cases ***
Login into the Admin Portal as a Building Admin   
    Subscription Admin Login
Building Admin can see all tabs
    Building Admin Admin Login
    Building Admin Admin Permissions to see all tabs