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
${office_shifts_header_title}  xpath=/html//h1[@class='Header-title']
${os_first_sign_in_button}  xpath=/html//log-in[@class='Body Login-body']//button[@class='MpqButton'] 
${your_profile_button}  css=.Header-right [data-bind='click\: showProfilePage']
${sign_out_button_office_shifts}  css=.ProfilePage section:nth-child(2) button
${questions}  css=a[title='testcontact@test.com']  #This one should be changed when we put actuall link text
${more_informations}  css=a[title='google.com']  #This one should be changed when we put actuall link text
${default_office_dropdown}  xpath=/html/body//page-content//div[@class='ProfilePage']/section[3]//select[@name='ProfilePage-select'] 
${calendar_synchronization}  xpath=/html/body//page-content//div[@class='ProfilePage']/section[3]//button[@class='ProfilePage-link']
${get_help_in_our_support_center}  css=[href='https\:\/\/support\.mapiq\.com\/support\/home']
${faq}  css=[href='https\:\/\/www\.mapiq\.com\/faq']
${privacy_policy}  css=[href='https\:\/\/www\.mapiq\.com\/privacy-policy']
${eula}  css=[href='https\:\/\/www\.mapiq\.com\/eula-office-shifts-app']

#Locators from links out of the Office Shifts App:

${support_mapiq_page_title}  xpath:/html/body//header[@class='topbar topbar--large topbar--with-image']//div[@class='intro-title']
${faq_title}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']
${privacy_policy_title}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']
${eula_title}  xpath:/html/body/main[@class='main-wrapper']/header[@class='subpage-header']//h1[@class='subpage-header-title']

*** Keywords ***
Sign Out of the Office Shifts
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Sleep   5
    Click Element    ${your_profile_button}
    Click Element    ${sign_out_button_office_shifts}
    Wait Until Element Is Visible    ${os_first_sign_in_button} 
"Your Profile" click
    Wait Until Element Is Visible  ${your_profile_button}
    Click Button  ${your_profile_button}
    Sleep  5
Get help in our support center link navigation
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Click Link     ${get_help_in_our_support_center}
    Switch Window  new 
    Wait Until Element Is Visible    ${support_mapiq_page_title}
FAQ link navigation
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Click Link     ${faq}
    Switch Window  new
    Wait Until Element Is Visible    ${faq_title}     
Privacy Policy navigation
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Click Link  ${privacy_policy}
    Switch Window  new
    Wait Until Element Is Visible    ${privacy_policy_title}   
EULA navigation
    Wait Until Element Is Visible    ${office_shifts_header_title}
    Click Link  ${eula}
    Switch Window  new
    Wait Until Element Is Visible  ${eula_title}  
