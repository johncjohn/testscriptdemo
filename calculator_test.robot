*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${SERVER_URL}     http://localhost:5000

*** Test Cases ***
Test Calculator
    Open Browser    ${SERVER_URL}    chrome
    Input Text    id=num1    2
    Input Text    id=num2    3
    Select From List    id=operation    add
    Submit Form    id=operation
    Page Should Contain    5
    Close Browser
