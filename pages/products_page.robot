*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../resources/locators.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***
Verifieer producten in Winkelwagen
    [Documentation]    Deze testcase controleert of de producten in de winkelwagentje zichtbaar zijn.
    [Tags]    smoke    products    ui    Winkelwagen
    Sleep    2s
    Click Element    ${Product1}
    Sleep    2s
    Click Element    ${WinkelwagenEN}
    #Element Should Contain   ${WinkelwagenCount}    1
    Click Element    ${WinkelwagenEN}
    #Element Should Contain   ${WinkelwagenCount}    2
    Click Element    ${WinkelwagenCount}
    Element Should Contain    ${ProductName}    Combination Pliers
    Element Should Contain    ${WinkelwagenPrijs}    $28.30


Verifieer verwijderde producten in Winkelwagen
    [Documentation]    Deze testcase controleert of een verwijderde product goed wordt verwerkt in de winkelwagen
    [Tags]    smoke    products    ui    Winkelwagen
    Click Element    ${WinkelwagenCount}
    Element Should Contain    ${ProductName}    Combination Pliers
    Element Should Contain    ${WinkelwagenPrijs}    $28.30
    Input Text    ${aantalVeld}     1
    Click Element     ${ProductName}
    Sleep    2s
    Element Should Contain    ${WinkelwagenPrijs}    $14.15
    Input Text    ${aantalVeld}     99
    Click Element     ${ProductName}
    Sleep    2s
    Element Should Contain    ${WinkelwagenPrijs}    $1,400.85	
    Click Element    ${DeleteButtonWinkelwagen} 
    Sleep    2s
    Element Should Contain    ${WinkelwagenPrijs}    $0.00	

*** Keywords ***
Voeg Product Toe Aan Favorieten
    [Arguments]    ${product}
    Click Element    ${product}
    Wait Until Element Is Visible    ${FavEN}
    Click Element    ${FavEN}

Verifieer Product In Favorieten
    [Arguments]    ${product}
    Click Element   ${AccountName}
    Click Element    ${MenuMyFavs}
    Element Should Contain    ${product}    ${product}


   