*** Settings ***
Documentation  Tests for a Building Admin
...            To run these tests, enter the "Tests" folder (cd Tests) and enter "robot -d results AdminPortal.robot/BuildingAdmin.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/AdminPortalPage.robot
Test Setup  Begin Web Test Admin portal
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Login into the Admin Portal as a Building Admin   
    Building Admin Login
Building Admin Permissions
    Building Admin Login
    Building Admin has Permissions to see all tabs