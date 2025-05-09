*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../pages/home_page.robot

Suite Setup    Open chrome en ga naar toolshopdemo
Suite Teardown    Sluit de browser

*** Test Cases ***
TC001: Verifieer homepage titel en klik vervolgens op menu-item Home
    [Documentation]    Deze testcase verifieert of de homepage titel correct is en klikt daarna op het menu-item "Home".
    [Tags]    smoke    homepage    ui  
    Controleer homepage titel

TC002: Verifieer dat de logo op de website wordt getoond.
    [Documentation]    Deze testcase controleert of de logo zichtbaar is.
    [Tags]    smoke    homepage    ui
    Controleer dat de logo bestaat

TC003: Verifieer dat alle menu-items bestaan
    [Documentation]    Deze testcase controleert of de menu-items zichtbaar zijn.
    [Tags]    smoke    homepage    ui
    Klik op de menu-item Home
    Controleer zichtbaarheid menu-items    

TC004: Verifieer dat footer bestaat en dat de juiste footertekst aanwezig is.
    [Documentation]    Deze testcase controleert of de footer zichtbaar is.
    [Tags]    smoke    homepage    ui    footer
    Controleer zichtbaarheid footer en footer tekst
    
TC005: Verifieer dat de linkjes in de footer correct zijn
    [Documentation]    Deze testcase controleert of de linkjes in de footer werken.
    [Tags]    smoke    homepage    ui    footer
    Check alle footer linkjes


TC006: Verifieer dat de zoekbalk en de daarbij horende onderdelen bestaan
    [Documentation]    Deze testcase controleert of de zoekbalk zichtbaar is.
    [Tags]    smoke    homepage    ui    search
    Verifieer dat de zoekbalk bestaat
TC007: Verifieert dat de zoekfunctionaliteit werkt
    [Documentation]    Test invoeren, wissen en zoeken.
    [Tags]    smoke    homepage    ui    search
    Zoek naar product    Computer
    Verwijder zoekterm
    Zoek naar product    Com
    Controleer zoekresultaat    Com
    Controleer productdetails

TC008: Verifieert dat de zoekfunctie geen resultaat geeft bij ongeldige data
    [Documentation]    Deze testcase controleert of bij een ongeldige zoekterm het juiste bericht wordt getoond.
    [Tags]    smoke    search    ui
    Verifieer dat geen resultaten worden gevonden bij ongeldige zoekterm    aaa

TC009: Verifieer dat Duitse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Duitse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Duitse taalinstelling

TC010: Verifieer dat Spaanse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Spaanse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Spaanse taalinstelling

TC011: Verifieer dat Franse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Franse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Franse taalinstelling

TC012: Verifieer dat Nederlandse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Nederlandse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Nederlandse taalinstelling

TC013: Verifieer dat Turkse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Turkse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Turkse taalinstelling

TC014: Verifieer dat Engelse taalinstelling correct werkt
    [Documentation]    Deze testcase controleert of de Engelse taalinstelling correct werkt.
    [Tags]    smoke    homepage    ui    language
    Verifieer Engelse taalinstelling


TC015: Verifieer dat alle submenu onderdelen onder Category werken
    [Documentation]    Deze testcase controleert of de submenu onderdelen onder Category werken.
    [Tags]    smoke    homepage    ui    menu
    Verifieer dat alle menu-items onder category werken

TC016: verifieer dat het klikken op signin werkt
    [Documentation]    Deze testcase controleert of het klikken op sign in werkt.
    [Tags]    smoke    homepage    ui    menu
    Verifieer dat het klikken op sign in werkt




    
Verplaats alle schermprints naar submap schermprint
    [Documentation]    Deze testcase verplaatst alle schermprints naar de submap schermprint.      
    Verplaats Screenshots Naar Submap