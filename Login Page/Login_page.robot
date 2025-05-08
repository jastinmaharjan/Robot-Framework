*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://practicetestautomation.com/practice-test-login/
${Username_field}     //*[@id="username"]
${Password_field}     //*[@id="password"]
${Submit_button}    //*[@id="submit"]
${Log_out_button}  //a[normalize-space(text())='Log out']

*** Test Cases ***
Login Page
    Open Browser    ${URL}  chrome
    Maximize Browser Window
    Input Text    ${Username_field}    student
    Input Text    ${Password_field}    Password123
    Click Button    ${Submit_button}
    Sleep    1
    Click Element   ${Log_out_button}

    Sleep    3
    Close Browser


