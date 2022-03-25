*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/LandingOfficeShifts.robot 
Resource  ./PO/OfficeShiftsYourShifts.robot
Resource  ./PO/OfficeShiftsYourProfile.robot
*** Variables ***

*** Keywords ***
Go to the Office Shifts Page 
    LandingOfficeShifts.Navigate to
    LandingOfficeShifts.Verify Page loaded
Log in to the Office Shifts Page
    LandingOfficeShifts.Log in
Logout of the Office Shifts Page
    OfficeShiftsYourProfile.Sign Out of the Office Shifts
Click on the "Your Profile"
    OfficeShiftsYourProfile."Your Profile" click
Get help in our support center link works
    OfficeShiftsYourProfile.Get help in our support center link navigation
FAQ link navigates a user to a right page
    OfficeShiftsYourProfile.FAQ link navigation
Privacy Policy link navigates a user to a right page
    OfficeShiftsYourProfile.Privacy Policy navigation
EULA link navigates a user to a right page
    OfficeShiftsYourProfile.EULA navigation

    

    