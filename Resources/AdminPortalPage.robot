*** Settings ***
Library  SeleniumLibrary 
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/AdminPortalTabs.robot
Resource  ./PO/PeopleTab.robot
*** Variables ***


*** Keywords ***
##################### Subscription Admin Tests: #######################
Subscription Admin Login
    LandingAdminPortal.Subscription Admin Logs in 
Subscription Admin has Permissions to see all tabs
    AdminPortalTabs.Subscription Admin can see all tabs
##################### Building Admin Tests: #######################
Building Admin Login
    LandingAdminPortal.Building Admin logs in
Building Admin has Permissions to see all tabs
    AdminPortalTabs.Building Admin can see all tabs
##################### Shift Admin Tests: #######################
Shift Admin Login
    LandingAdminPortal.Shift Admin logs in
Shift Admin has Permissions to see Home, Shifts, People, Access, Analytics, and Settings tabs but not Buildings tab
    AdminPortalTabs.Shift Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs, but not Buildings tab
##################### Shift Assistant Admin Tests: #######################
Shift Assistant Admin Login
    LandingAdminPortal.Shift Assistant Admin logs in
Shift Assistant Admin has Permissions to see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab
    AdminPortalTabs.Shift Assistant Admin see Home, Shifts, People, and Settings tabs but not Buildings, Access, and Analytics tab
##################### Shift Host Admin Tests: #######################
Shift Host Admin Login
    LandingAdminPortal.Shift Host Admin logs in
Shift Host Admin has Permissions to see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab
    AdminPortalTabs.Shift Host Admin see Home, Shifts, and Settings tabs but not Buildings, People, Access, and Analytics tab
##################### Analytics Viewer Admin Tests: #######################
Analytics Viewer Admin Login
    LandingAdminPortal.Analytics Viewer Admin logs in
Analytics Viewer has Permissions to see only Analytics tab
    AdminPortalTabs.Analytics Viewer see Analytics tab only
#################### Clicking on tabs Tests: #########################
Admin clicks on the People tab    
    AdminPortalTabs.Click on People tab 


################### Peple tab #####################
Search for a Building admins account on the "People" page and click on it
    PeopleTab.Search for a building admin and click on its account
Book a shift as Admin for a current day, for the first building, first floor, first area 
    PeopleTab.Book a shift as Admin
 As Admin, edit a shift for a current day
    PeopleTab.Edit a shift as an Admin
As Admin delete a shift for a current day
    PeopleTab.Delete a shift as Admin