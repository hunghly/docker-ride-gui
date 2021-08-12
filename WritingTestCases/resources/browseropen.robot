*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${url}            https://google.com/
${browser}        chrome

*** Keywords ***
Test Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text  name:q  xbox reviews
    sleep   3s
    Click Element  name:btnK
    Sleep   3s