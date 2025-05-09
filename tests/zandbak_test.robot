*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/common_keywords.robot
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot
Resource    ../pages/home_page.robot

Suite Setup    Open chrome en ga naar toolshopdemo
Suite Teardown    Sluit de browser


*** Test Cases ***
Verifieer of de pointer naar rechts kan worden gesleept
    [Documentation]    Deze testcase controleert of de pointer naar rechts kan worden gesleept.
    [Tags]    smoke    homepage    ui
    Sleep de pointer naar rechts