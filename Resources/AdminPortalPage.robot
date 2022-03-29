*** Settings ***
Library  SeleniumLibrary 
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/AdminPortalTabs.robot
Resource  ./PO/AdminPortalTabs.robot
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


