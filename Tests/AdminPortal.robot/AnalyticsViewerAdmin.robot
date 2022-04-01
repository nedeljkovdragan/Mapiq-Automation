*** Settings ***
Documentation  Tests for a Shift Assistans Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/AnalyticsViewerAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test Admin portal
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Login into the Admin Portal as a Analytics Viewer Admin   
    Analytics Viewer Admin Login
Analytics Viewer Admin can see only Analytics tab
    Analytics Viewer Admin Login
    Analytics Viewer has Permissions to see only Analytics tab