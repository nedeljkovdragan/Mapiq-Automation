*** Settings ***
Documentation  This page contains all buttons and input fields variables for the Office shifts "Your Connections" page
...            NOTE: We have two different "Your connections" variable buttons, one when there is no new connections, and one when there are
Library  SeleniumLibrary 

*** Variables ***
${x_button}  css=.SidePanel-close > svg > path:nth-of-type(1)
${add_colleagues_button}  xpath=/html/body/side-panel/div//span[.='Add colleagues']
${your_connections_button_no_new_requests}  css=.Header-menu > .Bar > button:nth-of-type(2) > svg:nth-of-type(1)
${connections_input_field}  xpath=/html/body/side-panel/div//input[@class='MpqSearchBox']
${connections_search_result_1}  xpath= /html/body/side-panel/div//div[@class='ConnectionsPage-content']/div[1]/div[1]
${connect_button}  xpath=/html/body/side-panel/div/div//button[@class='MpqButton MpqButton--outline MpqButton--small']
${send_request_button}  xpath=/html/body//connection-add//button[@class='MpqButton MpqButton--app']
${cancel_button_send_request}  xpath=/html/body//connection-add//button[@class='MpqButton MpqButton--app MpqButton--cancel']
######## VARIABLES FOR ACCEPTING THE CONNECTION ##########
${your_connections_button_with_new_request}  css=.Header-right [data-bind='visible\: \!connectionsActive\(\)']
${new_request}  css=[data-bind='css\: \{ \'is-empty\'\: allReceivedRequestsUpdated \}']
${accept_button}  css=[data-bind='click\: onAccept']
${connected_colleagues_tile}  css=.ConnectionsPage-tile
######## VARIABLES FOR DELETING A CONNECTION ##########
${x_button_for_connection}  css=button[name='delete'] > mpq-icon  svg
${cancel_button_for_deleting_popup}  css=[data-bind='text\: firstButtonText\, click\: cancel']
${delete_button}  css=.MpqButton.MpqButton--red
######## CONNECTIONS PAGE-EMPTY ###########
${connections_empty}  xpath=/html/body/side-panel/div//div[@class='ConnectionsPage-empty']/span
*** Keywords ***
"Your connections" click
    Wait Until Element Is Visible    ${your_connections_button_no_new_requests}
    Click Element    ${your_connections_button_no_new_requests}
    Sleep  3
Add a connection
    Wait Until Element Is Visible    ${add_colleagues_button}
    Click Element    ${add_colleagues_button}
    Wait Until Element Is Visible    ${connections_input_field}
    Input Text    ${connections_input_field}    subscription admin
    Wait Until Element Is Visible    ${connections_search_result_1}
    Click Element    ${connect_button}
    Wait Until Element Is Visible    ${send_request_button}
    Click Element  ${send_request_button}
    Sleep  3
    Element Should Not Be Visible    ${connect_button}
Accept the connection
    Wait Until Element Is Visible    ${your_connections_button_with_new_request}
    Click Element    ${your_connections_button_with_new_request}
    Wait Until Element Is Visible    ${accept_button}
    Click Element    ${accept_button}
    Wait Until Element Is Visible    ${x_button_for_connection} 
Delete a connection
    Wait Until Element Is Visible    ${x_button_for_connection}
    Click Element    ${x_button_for_connection}
    Wait Until Element Is Visible    ${delete_button}
    Click Element    ${delete_button}
    Wait Until Element Is Visible    ${connections_empty}