*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/LandingOfficeShifts.robot 
Resource  ./PO/OfficeShiftsYourShifts.robot
Resource  ./PO/OfficeShiftsYourProfile.robot
Resource  ./PO/OfficeShiftsYourConnections.robot
Resource  ./PO/OfficeShiftsNotifications.robot
Resource  ./PO/PeopleTab.robot
*** Variables ***

*** Keywords ***
################# BASIC TESTS ##################
Go to the Office Shifts Page 
    LandingOfficeShifts.Navigate to
    LandingOfficeShifts.Verify Page loaded
Log in to the Office Shifts Page
    LandingOfficeShifts.Log in
Logout of the Office Shifts Page
    OfficeShiftsYourProfile.Sign Out of the Office Shifts
################ YOUR PROFILE ###################
Click on the "Questions" link
    OfficeShiftsYourProfile."Questions" click
Click on the "More information" 
    OfficeShiftsYourProfile."More information" click
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
################ SHIFT BOOKING ###################
Book a shift for a current day, for the first building, first floor, first area
    OfficeShiftsYourShifts.Booking a shift for a current day, first building, first area
Edit a shift for a current day
    OfficeShiftsYourShifts.Edit a current day shift
Delete a shift for a current day
    OfficeShiftsYourShifts.Delete a current day shift
End user checks in for the current day
    OfficeShiftsYourShifts.End User checks in for today
End User sets the status to "Not at the office"
    OfficeShiftsYourShifts.End User sets "Not at the Office status"
################ CONNECTIONS ###################
Click on "Your Connections"
    OfficeShiftsYourConnections."Your connections" click
Add a Subscription Admin as a connection
    OfficeShiftsYourConnections.Add a connection
Subscription Admin accepts the connection of a Building Admin
    OfficeShiftsYourConnections.Accept the connection
Delete a Subscription Admin connection
    OfficeShiftsYourConnections.Delete a connection
############### NOTIFICATIONS ####################
Click on the "Notifications"
    OfficeShiftsNotifications."Notifications" click
Confirm that an End User received a notification that Admin booked a shift for him
    OfficeShiftsNotifications.Notification received for booked shift by Admin
Confirm that an End User received a notification that Admin updated a shift for him
    OfficeShiftsNotifications.Notification received for updated shift
Confirm that an End User received a notification that Admin deleted a shift for him
    OfficeShiftsNotifications.Notification received for deleted shift
    