*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/locators.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/variables.robot

*** Keywords ***
Verifieer dat de zoekbalk bestaat
    [Documentation]    Deze testcase controleert of de zoekbalk zichtbaar is.
    [Tags]    smoke    homepage    ui    search
    Element Should Be Visible    ${searchbar}
    Element Should Be Visible    ${deleteTextButton}
    Element Should Be Visible    ${searchButton}

*** Keywords ***
Zoek naar product
    [Arguments]    ${zoekterm}
    Input Text    ${searchbar}    ${zoekterm}
    Click Element    ${searchButton}

Verwijder zoekterm
    Click Element    ${deleteTextButton}

Controleer zoekresultaat
    [Arguments]    ${zoekterm}
    Element Should Contain    ${searchResult}    Searched for: ${zoekterm}

Controleer productdetails
    Element Should Contain    ${Product1}     Combination Pliers
    Element Should Contain    ${PriceProduct1}    $14.15
    Element Should Be Visible   ${AltTextProduct1}

Verifieer dat geen resultaten worden gevonden bij ongeldige zoekterm
    [Arguments]    ${zoekterm}
    [Documentation]    Voert een zoekterm in en controleert dat er geen producten worden gevonden.
    Input Text    ${searchbar}    ${zoekterm}
    Click Element    ${searchButton}
    Sleep    3s
    Element Should Contain    ${noProductsFound}    There are no products found.
    
Verifieer dat het klikken op sign in werkt
    [Documentation]    Deze testcase controleert of het klikken op de sign in knop werkt.
    [Tags]    smoke    homepage    ui    search
    Click Element    ${SignIn}
    Sleep    2s
    Element Should Contain    ${LoginTitle}    Login

Ga naar de homepagina
    [Documentation]    Deze testcase controleert of de homepage correct wordt geladen.
    [Tags]    smoke    homepage    ui
    Click Element    ${Home}
    Sleep   1s

Sleep de pointer naar rechts
    [Documentation]    Deze testcase controleert of de pointer naar rechtsboven kan worden gesleept.
    [Tags]    smoke    homepage    ui
    Sleep    2s
    Execute Javascript    document.querySelector("//span[@ngxsliderhandle and contains(@class, 'ngx-slider-pointer-min')]").style.left = "30px"   
    ${new_left}=    Get Element Attribute    //span[@ngxsliderhandle and contains(@class, 'ngx-slider-pointer-min')]    style
    #Should Contain    ${new_left}    left: 30px
    Sleep    2s