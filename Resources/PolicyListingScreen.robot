*** settings ***
Library     SeleniumLibrary
Variables   ../PageElements/Locators.py

*** keywords ***


Click Ulip link
    click element       ${Ulip_Link}

Click view details button
    [Arguments]     ${ViewDetailsLocator}
    click button        ${ViewDetailsLocator}

Policy details
    ${items}  Get Text  ${MissingDetails}
    Run Keyword IF  "${items}"=="Missing details"  Cancel PopUp
    ...  ELSE  Scroll elements

Cancel PopUp
    click button       ${DismissPopUp}
    scroll element into view        ${Scroll_Page_till_NomineeDetails}

Scroll elements
    scroll element into view        ${Scroll_Page_till_NomineeDetails}