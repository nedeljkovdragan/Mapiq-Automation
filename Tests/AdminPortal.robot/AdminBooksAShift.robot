*** Settings ***
Documentation  Tests for a Shift Assistans Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/AnalyticsViewerAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test Admin portal
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Subscription Admin books a shift for an End User
    Subscription Admin Login
    Admin clicks on the People tab    
    Search for a Building admins account on the "People" page and click on it    
End User gets a notification that Admin has booked a shift for him 
    
