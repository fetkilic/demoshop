*** Settings ***
Library    login_page_test.robot    # Zorg ervoor dat je de login_test.robot importeert om de inlog functionaliteit aan te roepen
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../pages/products_page.robot
Resource    ../pages/home_page.robot

Suite Setup    Open chrome en ga naar toolshopdemo
Suite Teardown    Sluit de browser

*** Test Cases ***
TC001: Verifieer weergave van producten en correcte totaalprijs in winkelwagen
    [Documentation]    Verifieert de zichtbaarheid van de producten in de winkelwagen en valideert de correctheid van de weergegeven totaalprijs.
    [Tags]    smoke    products    ui    Winkelwagen
    Verifieer producten in Winkelwagen

TC002: Verifieer verwijderde producten in winkelwagen
    [Documentation]    Verifieert de correcte verwerking van een verwijderd product in de winkelwagen.
    [Tags]    smoke    products    ui    Winkelwagen
    Verifieer verwijderde producten in Winkelwagen
    
TC003: Verifieer Product In Favorieten
    [Documentation]    Deze testcase verifieert of een product succesvol aan de favorieten wordt toegevoegd na inloggen
    [Tags]    smoke    products    ui    login
    # Login uitvoeren
    Click Element    ${SignIn}
    Input Text    ${VeldUsername}    ${Username}
    Input Text    ${VeldPassword}    ${UserPassword}
    Click Element    ${LoginButton}
    Sleep    2s
    Element Should Be Visible    ${MyAccount}  # Verifieer of je ingelogd bent
    
    # Ga naar favorieten en voeg product toe
    Click Element    ${Home}
    Sleep    2s
    Click Element    ${Product1}
    Sleep    2s
    Click Element    ${FavEN}
    Sleep     2s
    Click Element    ${AccountName}
    Sleep     1s
    Click Element    ${MenuMyFavs}  
    Sleep     2s
    Element Should Contain    ${Product1}    Combination Pliers

TC004: Verifieer dat favoriete product is verwijderd
    [Documentation]    Deze testcase verifieert of een product succesvol uit de favorieten wordt verwijderd.
    [Tags]    smoke    products    ui    login    
    # Ga naar favorieten en verwijder product
    Click Element   ${AccountName}
    Sleep     1s
    Click Element   ${MenuMyFavs}  
    Sleep     2s
    Click Element   ${DeleteButtonFavs}
    Element Should contain    ${NoFavs}    There are no favorites yet. In order to add favorites, please go to the product listing and mark some products as your favorite.
    Sleep    2s





    
Verplaats alle schermprints naar submap schermprint
    [Documentation]    Deze testcase verplaatst alle schermprints naar de submap schermprint.      
    Verplaats Screenshots Naar Submap