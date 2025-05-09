*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/locators.robot
Resource    ../resources/common_keywords.robot
Resource    ../resources/variables.robot
Resource    ../pages/login_page.robot

*** Keywords ***
Verifieer validaties op register account-pagina
    [Documentation]    Deze testcase verifieert dat de gebruiker validaties krijgt bij het registreren van een account op lege velden.
    Open Loginpagina
    Click Element    ${register}
    Click Element    ${registerButton}
    Sleep    2s
    Element Should Contain    ${ValidationFirstName}    First name is required
    Element Should Contain    ${ValidationLastName}    fields.last-name.required
    Element Should Contain    ${ValidatonDateofBirth}    Date of Birth is required
    Element Should Contain    ${ValdiationStreet}    Street is required
    Element Should Contain    ${ValidationPostcode}    Postcode is required
    Element Should Contain    ${ValidationCity}    City is required
    Element Should Contain    ${ValidationState}    State is required
    Element Should Contain    ${ValidationCountry}    Country is required
    Element Should Contain    ${ValidationPhone}    Phone is required
    Element Should Contain    ${ValidationEmail}    Email is required
    Element should contain    ${ValidationPassword}    Password is required
    ...    Password must be minimal 6 characters long.
    ...    Password can not include invalid characters.

Maak een account aan met geldige gegevens
    [Documentation]    Deze testcase verifieert dat de gebruiker een account kan aanmaken met geldige gegevens.
    [Tags]    smoke    login    ui
    Open Loginpagina
    Click Element    ${register}
    Input Text    ${FirstName}    F
    Input Text    ${LastName}    K
    Sleep    2s
    Click Element    ${dateofBirth}
    Press Keys       ${dateofBirth}   01-01-1990
    Sleep    2s
    Input Text    ${Street}    Teststreet
    Input Text    ${postalCode}    1234AB
    Input Text    ${City}    Testcity
    Input Text    ${State}    Teststate
    Select From List By Value    ${Country}    NL
    Input Text    ${Phone}    123456789
    Input Text    ${Email}    ${Username}
    Input Text    ${Password}    ${UserPassword}
    Click Element    ${RegisterButton}
    Sleep    5s










