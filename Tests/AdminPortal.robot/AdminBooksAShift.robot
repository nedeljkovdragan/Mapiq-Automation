*** Settings ***
Documentation  Tests for a Shift Assistans Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/AnalyticsViewerAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test Admin portal
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Subscription Admin books a shift for an End User
    Subscription Admin Login
    Admin clicks on the People tab    
    Search for a Building admins account on the "People" page and click on it
    Book a shift as Admin for a current day, for the first building, first floor, first area    
End User gets a notification that Admin has booked a shift for him 
    Begin Web Test Office Shifts 
    Log in to the Office Shifts Page
    Click on the "Notifications"
    Confirm that an End User received a notification that Admin booked a shift for him
    End Web Test
Subscription Admin edits a shift for an End User
    Subscription Admin Login
    Admin clicks on the People tab    
    Search for a Building admins account on the "People" page and click on it
    As Admin, edit a shift for a current day
End User gets a notification that Admin has updated shift for him 
    Begin Web Test Office Shifts 
    Log in to the Office Shifts Page
    Click on the "Notifications"
    Confirm that an End User received a notification that Admin updated a shift for him
    End Web Test
Subscription Admin deletes a shift for an End User
    Subscription Admin Login
    Admin clicks on the People tab    
    Search for a Building admins account on the "People" page and click on it
    As Admin delete a shift for a current day
End User gets a notification that Admin has deleted shift for him 
    Begin Web Test Office Shifts 
    Log in to the Office Shifts Page
    Click on the "Notifications"
    Confirm that an End User received a notification that Admin deleted a shift for him
    End Web Test