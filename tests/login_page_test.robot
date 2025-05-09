*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../pages/login_page.robot

Suite Setup    Open chrome en ga naar toolshopdemo
Suite Teardown    Sluit de browser

*** Test Cases ***
TC001: Verifieert dat de gebruiker succesvol kan inloggen met geldige gegevens
    [Documentation]    Deze testcase verifieert dat de gebruiker succesvol kan inloggen met geldige inloggegevens.
    [Tags]    smoke    login    ui
    Open Loginpagina
    Inloggen met geldige gegevens
    Controleer of gebruiker is ingelogd

