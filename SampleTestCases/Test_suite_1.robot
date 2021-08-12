*** Settings ***
Library           SeleniumLibrary
Resource          resources/browseropen.robot

*** Variables ***
${number}         100

*** Test Cases ***
TC1
    Test Chrome
    Close Browser

TC2
    Test Firefox
    Close Browser

TC3
    [Documentation]    Using variables
    [Tags]    TC2
    ${a}    Set Variable    Hi
    Log    ${a}
    ${b}    Set Variable If    ${number} > 0    Yes    No
    Log    ${b}
