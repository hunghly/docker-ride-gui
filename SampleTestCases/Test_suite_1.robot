*** Settings ***
Library           SeleniumLibrary
Resource          resources/browseropen.robot

*** Variables ***
${number}         100

*** Test Cases ***
Test Chrome
    Test Chrome
    Close Browser

Test Firefox
    Test Firefox
    Close Browser

Test Variables
    [Documentation]    Using variables
    [Tags]    TC2
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${number} > 0    Yes    No
    Log    ${b}
