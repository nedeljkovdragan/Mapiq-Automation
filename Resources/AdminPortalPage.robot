*** Settings ***
Library  SeleniumLibrary 
Resource  ./PO/LandingAdminPortal.robot
Resource  ./PO/AdminPortalTabs.robot

*** Variables ***


*** Keywords ***
Subscription Admin Login
    Subscription Admin Logs in 
Subscription Admin Permissions to see all tabs
    Subscription Admin can see all tabs