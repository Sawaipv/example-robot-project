*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${bro}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}      ${bro}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Element    //a[normalize-space()='Log in']
    ${emailtext}    Set Variable    //input[@id='Email']

    Element Should Be Visible    ${emailtext}
    Element Should Be Enabled    ${emailtext}

    Input Text    ${emailtext}    Myname
    Sleep    3
    Clear Element Text    ${emailtext}
    Sleep    3
    Close Browser
*** Keywords ***
