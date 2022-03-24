*** Settings ***
Library  SeleniumLibrary 
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/AdminPortalTabs.robot
Resource  ./PO/AdminPortalTabs.robot
Resource  ./PO/AdminPortalTabs.robot
Resource  ./PO/AdminPortalTabs.robot

*** Variables ***


*** Keywords ***
##################### Subscription Admin Tests: #######################
Subscription Admin Login
    Subscription Admin Logs in 
Subscription Admin Permissions to see all tabs
    Subscription Admin can see all tabs
##################### Building Admin Tests: #######################
Building Admin Login
    Building Admin logs in
Building Admin Permissions to see all tabs
    Building Admin can see all tabs
##################### Shift Admin Tests: #######################
Shift Admin Login
    Shift Admin logs in
Shift Admin Permissions to see Home, Shifts, People, Access, Analytics, and Settings tabs but not Buildings tab
    Shift Admin can see Home, Shifts, People, Access, Analytics, and Settings tabs, but not Buildings tab
