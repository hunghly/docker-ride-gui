*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://google.com/
${c-browser}        chrome
${f-browser}        firefox
*** Keywords ***
Test Chrome
    Open Browser    ${url}    ${c-browser}
    Maximize Browser Window
    Input Text    name:q    movies reviews
    sleep    3s
    Click Element    name:btnK
    Sleep    3s

Test Firefox
    Open Browser    ${url}    ${f-browser}
    Maximize Browser Window
    Input Text    name:q    video game reviews
    sleep    3s
    Click Element    name:btnK
    Sleep    3s