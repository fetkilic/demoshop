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
    Open Browser    https://practicesoftwaretesting.com/
    Title Should Be    Practice Software Testing - Toolshop - v5.0
    