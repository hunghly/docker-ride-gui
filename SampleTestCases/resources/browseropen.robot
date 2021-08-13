*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://google.com/
${c-browser}      chrome
${f-browser}      firefox

*** Keywords ***
Test Chrome
    Open Browser    ${url}    ${c-browser}
    Capture Page Screenshot    screenshot_{index}.png
    Maximize Browser Window
    Input Text    name:q    movies reviews
    Capture Page Screenshot    screenshot_{index}.png
    sleep    3s
    Click Element    name:btnK
    Sleep    3s
    Capture Page Screenshot    screenshot_{index}.png

Test Firefox
    Open Browser    ${url}    ${f-browser}
    Capture Page Screenshot    screenshot_{index}.png
    Maximize Browser Window
    Input Text    name:q    video game reviews
    Capture Page Screenshot    screenshot_{index}.png
    sleep    3s
    Click Element    name:btnK
    Sleep    3s
    Capture Page Screenshot    screenshot_{index}.png
