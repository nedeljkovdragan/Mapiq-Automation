*** Settings ***
Documentation  This page contains all buttons and 
...            input fields variables for the Office shifts 
...            "Your Profile" page
...
Library  SeleniumLibrary 
Library    XML
Library    Process
Library    Telnet
Library    Dialogs

*** Variables ***
${YOUR_PROFILE_BUTTON}  css:.Header-right [data-bind='click\: showProfilePage']
${SIGN_OUT_BUTTON_OFFICE_SHIFTS}  css:.ProfilePage section:nth-child(2) button
${QUESTIONS}  css:a[title='testcontact@test.com']  #This one should be changed when we put actuall link text
${MORE_INFORMATIONS}  css:a[title='google.com']  #This one should be changed when we put actuall link text
${DEFAULT_OFFICE_DROPDOWN}  xpath:/html/body//page-content//div[@class='ProfilePage']/section[3]//select[@name='ProfilePage-select'] 
${CALENDAR_SYNCHRONIZATION}  xpath:/html/body//page-content//div[@class='ProfilePage']/section[3]//button[@class='ProfilePage-link']
${GET_HELP_IN_OUR_SUPPORT_CENTER}  css:[href='https\:\/\/support\.mapiq\.com\/support\/home']
${FAQ}  css:[href='https\:\/\/www\.mapiq\.com\/faq']
${PRIVACY_POLICY}  xpath=//a[contains(text(),'Privacy Policy')]
${EULA}  css:[href='https\:\/\/www\.mapiq\.com\/eula-office-shifts-app']

#Locators from links out of the Office Shifts App:

${SUPPORT_MAPIQ_PAGE_TITLE}  xpath:/html/body//header[@class='topbar topbar--large topbar--with-image']//div[@class='intro-title']
${FAQ_TITLE}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']
${PRIVACY_POLICY_TITLE}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']
${EULA_TITLE}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']

*** Keywords ***
Sign Out of the Office Shifts
    Click Button    ${SIGN_OUT_BUTTON_OFFICE_SHIFTS}
    Sleep  2
"Your Profile" click
    Click Button  ${YOUR_PROFILE_BUTTON}
    Sleep  5
Get help in our support center link navigation
    Click Link     ${GET_HELP_IN_OUR_SUPPORT_CENTER}
    Switch Window  new 
    Sleep  5
    Element Should Contain    ${SUPPORT_MAPIQ_PAGE_TITLE}    Hi, we're happy to help
FAQ link navigation
    Click Link     ${FAQ}
    Switch Window  new
    Sleep  5
    Element Should Contain    ${FAQ_TITLE}    FAQ
Privacy Policy navigation
    Click Link  ${PRIVACY_POLICY}
    Switch Window  new
    Sleep  15
    Pause Execution
    Element Should Contain    ${PRIVACY_POLICY_TITLE}    Privacy policy
EULA navigation
    Click Link  ${EULA}
    Switch Window  new
    Sleep  5
    Element Should Contain  ${EULA_TITLE}  End User License Agreement Mapiq Office Shifts
