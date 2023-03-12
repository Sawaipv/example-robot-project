*** Settings ***
Library  SeleniumLibrary



*** Test Cases ***
TC1
    Open Browser    url=https://www.amazon.in/   browser=chrome
    Maximize Browser Window
    Click Element   id=twotabsearchtextbox
    Input Text    twotabsearchtextbox    Smartphone
    Click Element    nav-search-submit-button
    Wait Until Element Is Visible    //img[@alt='Sponsored Ad - Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers']   timeout=20
    Click Element    //img[@alt='Sponsored Ad - Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers']
    Sleep    4
    Close Browser
TC2
    Open Browser    url=https://www.amazon.in/   browser=chrome
    Maximize Browser Window
    Click Element   id=twotabsearchtextbox
    Input Text    twotabsearchtextbox    samsung s20
    Click Element    nav-search-submit-button
    Wait Until Element Is Visible    //img[@alt='Sponsored Ad - Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers']   timeout=20
    Click Element    //img[@alt='Sponsored Ad - Samsung Galaxy S20 FE 5G (Cloud Navy, 8GB RAM, 128GB Storage) with No Cost EMI & Additional Exchange Offers']
    ${titles}=      Get Window Titles
    ${new_tab_title}=    Set Variable    ${titles}[1]
     Log             New Tab Title: ${new_tab_title}
    Switch Window   ${new_tab_title}
    Wait Until Element Is Visible    //p[normalize-space()='8GB+128Gb']   timeout=20s
    Click Element    //p[normalize-space()='8GB+128Gb']
    Scroll Element Into View    //p[normalize-space()='8GB+128Gb']
    Click Element    id=buy-now-button
    Wait Until Element Is Visible    //input[@id='ap_email']    timeout=10s
    Input Password    //input[@id='ap_email']    7507575629
    Click Element    id=continue
    Wait Until Element Is Visible    ap_password
    Input Password    ap_password    amaze@456
    Click Element    id=signInSubmit
    Sleep    3
    Close Window
