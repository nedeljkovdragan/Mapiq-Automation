*** Settings ***
Documentation  Login to Office Shifts Test
...            To run this test, enter the "Tests" folder (cd Tests) and enter "robot -d results UserApp.robot/Your_Profile_Links.robot" in the Terminal
Resource  ../../Resources/SetupTeardown.robot
Resource  ../../Resources/OfficeShiftsPage.robot
Test Setup  Begin Web Test Office Shifts 
Test Teardown  End Web Test


*** Variables ***

*** Test cases ***
Questions link navigates a user to the "Mail" app        
    [Tags]  Questions
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on the "Your Profile"
    Click on the "Questions" link
More information link navigates a user to the right page
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on the "Your Profile"
    Click on the "More information" 
Get help in our support center link navigates a user to a right page
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on the "Your Profile"
    Get help in our support center link works
FAQ link navigates a user to a right page
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on the "Your Profile"
    FAQ link navigates a user to a right page
#Privacy Policy link navigates a user to a right page                               
    #Go to the Office Shifts Page
    #Log in to the Office Shifts Page
    #Click on the "Your Profile"
    #Privacy Policy link navigates a user to a right page
EULA link navigates a user to a right page
    Go to the Office Shifts Page
    Log in to the Office Shifts Page
    Click on the "Your Profile"
    EULA link navigates a user to a right page
    