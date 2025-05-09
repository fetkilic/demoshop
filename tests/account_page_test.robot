*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../pages/login_page.robot
Resource    ../pages/account_page.robot

Suite Setup    Open chrome en ga naar toolshopdemo
Suite Teardown    Sluit de browser

*** Test Cases ***
T0001: Verifieert de validaties op de register account-pagina
    [Documentation]    Deze testcase verifieert dat de gebruiker validaties krijgt bij het registreren van een account op lege velden.
    [Tags]    smoke    login    ui
   Verifieer validaties op register account-pagina

TC002: Verifieer dat account is aangemaakt
    [Documentation]    Deze testcase verifieert dat de gebruiker een account kan aanmaken met geldige gegevens.
    [Tags]    smoke    login    ui
    Maak een account aan met geldige gegevens