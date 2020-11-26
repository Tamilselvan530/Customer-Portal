*** settings ***
Library     SeleniumLibrary
Variables   ../PageElements/Locators.py

*** keywords ***

RNR
    [Arguments]  ${Sheetname}
    ${maxr}=  fetch_number_of_rows  ${Sheetname}
    [return]  ${maxr}

RCD
    [Arguments]  ${Sheetname}  ${row}  ${column}
    ${celldata}=  fetch_cell_data  ${Sheetname}  ${row}  ${column}
    [return]  ${celldata}

Open My Browser
    [Arguments]     ${SiteUrl}      ${Browser}
    open browser        ${SiteUrl}      ${Browser}
    Maximize browser window

Enter UserID
    [Arguments]     ${UserID}
    Input text      ${UserID_TextBox}       ${UserID}

Scroll page till checkuserID
    scroll element into view        ${Scroll_Page_till_ChechuserID}

Click continue with existing ID
    click button        ${Continue_CTA}

Click CheckUserID
    click button        ${CheckUserID_Button}

Enter Incorrect password
    [Arguments]     ${Incorrect_Password}
    Input text      ${Password_TextBox}     ${Incorrect_Password}

Enter valid password
    [Arguments]     ${Password}
    Input text      ${Password_TextBox}     ${Password}

Click Submit
    click button        ${Submit_Button}

Verify whatsapp PopUp
    ${text}  Get Text  ${WhatsApp_Text}
    Run Keyword IF  "${text}"=="WhatsApp Opt-in"  Click popUp cross icon
    ...  ELSE  Verify Dashboard

Click popUp cross icon
    click element       ${PopUp_SkipLink}


Verify Dashboard
    Page should contain     DashBoard


Close My Browsers
    close all browsers