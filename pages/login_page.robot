*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/locators.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***
Open Loginpagina
    Click Element    ${SignIn}
    Element Should Contain    ${LoginTitle}    Login

Inloggen met geldige gegevens
    Input Text    ${VeldUsername}    ${Username}
    Input Text    ${VeldPassword}    ${UserPassword}
    Click Element    ${LoginButton}