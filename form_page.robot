*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}  https://demoqa.com/automation-practice-form
${Locator_First_Name}   //*[@id="firstName"]
${Locator_Last_Name}    //*[@id="lastName"]
${Locator_Email}    //*[@id="userEmail"]
${Locator_Gender}   //*[@id="genterWrapper"]/div[2]/div[1]/label
${Locator_Number}   //*[@id="userNumber"]

${Locator_Dob}  //*[@id="dateOfBirthInput"]
${Locator_Month_Select}  //select[@class='react-datepicker__month-select']
${Locator_Year_Select}      //select[@class='react-datepicker__year-select']
${Locator_Day_Select}       //div[contains(@class,'react-datepicker__day') and text()='8']

${Subject_Input}    id=subjectsInput
${Subject_Name}     English

${Locator_Hobby}   //*[@id="hobbiesWrapper"]/div[2]/div[3]/label

${Picture_Path}     C:/Users/Jastin Raj Maharjan/Downloads/Northern Lights.jpg
${Upload_Picture}   //*[@id="uploadPicture"]

${Locator_Address}   //*[@id="currentAddress"]

${State_Dropdown}    //div[@id='state']
${State_Option}      //div[contains(@id,'react-select-3-option-0')]

${City_Dropdown}    //*[@id="city"]
${City_Option}      //div[contains(@id,'react-select-4-option-0')]

${Submit_buttom}    //*[@id="submit"]
${Close_button}     //*[@id="closeLargeModal"]

*** Test Cases ***
Form Page
    Open Browser    ${URL}  chrome
    Maximize Browser Window
    Input Text    ${Locator_First_Name}    Justin
    Input Text    ${Locator_Last_Name}    Maharjan
    Input Text   ${Locator_Email}    jastin@gmail.com
    Click Element    ${Locator_Gender}
    Input Text    ${Locator_Number}    1234567890

    Click Element    ${Locator_Dob}
    Select From List By Label    ${Locator_Month_Select}    June
    Select From List By Value    ${Locator_Year_Select}     2002
    Click Element    ${Locator_Day_Select}

    Click Element    ${Subject_Input}
    Input Text    ${Subject_Input}    ${Subject_Name}
    Press Keys       ${Subject_Input}   RETURN

    Click Element    ${Locator_Hobby}
    
    Choose File    ${Upload_Picture}    ${Picture_Path}

    Input Text    ${Locator_Address}    Nepal, Kathmandu

    Click Element    ${State_Dropdown}
    Click Element    ${State_Option}

    Click Element    ${City_Dropdown}
    Click Element    ${City_Option}

    Click Button    ${Submit_buttom}
    Sleep    3
    Click Button    ${Close_button}

    Sleep    5
    Close Browser