*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../resources/locators.robot
Resource    ../resources/variables.robot

*** Keywords ***
Open chrome en ga naar toolshopdemo
        Open Browser  ${url}  ${BROWSER}    options=${HEADLESS}    
        

Controleer homepage titel
    Title Should Be    Practice Software Testing - Toolshop - v5.0

Klik op de menu-item Home
    Click Element    ${Home}

Controleer zichtbaarheid menu-items
    Element Should Be Visible    ${Home}
    Element Should Be Visible    ${Categories}
    Element Should Be Visible    ${Contact}
    Element Should Be Visible    ${SignIn}
    Click Element                ${Categories}
    Element Should Be Visible    ${HandTools}
    Element Should Be Visible    ${PowerTools}
    Element Should Be Visible    ${Other}
    Element Should Be Visible    ${SpecialTools}
    Element Should Be Visible    ${Rentals}
    Click Element                ${HandTools}    
    Click Element                ${Contact}
    Click Element                ${SignIn}
    Click Element                ${Home}

Controleer zichtbaarheid footer en footer tekst
    Element Should Be Visible    ${footer}
    Element Text Should Be    ${FooterText}    This is a DEMO application (GitHub repo), used for software testing training purpose. | Support this project | Privacy Policy | Banner photo by Barn Images on Unsplash.
Sluit de browser
    Close Browser

Controleer dat de logo bestaat
    [Documentation]    Deze testcase controleert of de logo zichtbaar is.
    [Tags]    smoke    homepage    ui
    Element Should Be Visible    ${logo}

Check alle footer linkjes
    [Documentation]    Deze testcase controleert of de linkjes in de footer werken.
    [Tags]    smoke    homepage    ui    footer
    ${href}=  Get Element Attribute    ${git_locator}    href
    should be equal    ${href}    ${footerURL1}
    ${href}=  Get Element Attribute    ${supp_locator}    href
    should be equal    ${href}    ${footerURL2}
    ${href}=  Get Element Attribute    ${privacy_locator}    href
    should be equal    ${href}    ${footerURL3}    
    ${href}=  Get Element Attribute    ${barn_locator}    href
    should be equal    ${href}    ${footerURL4}
    ${href}=  Get Element Attribute    ${unsplash_locator}    href
    should be equal    ${href}    ${footerURL5}
    #Go To    ${footerURL1}
    #Go To    ${footerURL2}
    #Go To    ${footerURL3}
    #Go To    ${footerURL4}
    #Go To    ${footerURL5}

Verplaats Screenshots Naar Submap
    Create Directory    ${OUTPUT DIR}/schermprint
    Move Files    ${OUTPUT DIR}/*.png    ${OUTPUT DIR}/schermprint/

Verifieer Duitse taalinstelling
    [Documentation]    Deze testcase controleert of de Duitse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui    language
    Click Element    ${EnWorld}
    Click Element    ${DE}
    Sleep    1s
    Element Text Should Be    ${inloggenDE}    Einloggen 
    Element Text Should Be    ${SorterenDE}    Sortieren
    Element Text Should Be    ${PrijsKlasseDE}    Preisspanne
    Element Text Should Be    ${ZoekenDE}    Suche
    Element Text Should Be    ${OpCategorieDE}    Nach Kategorie:
    Element Text Should Be    ${OpMerkDE}    Nach Marken:

Verifieer Spaanse taalinstelling
    [Documentation]    Deze testcase controleert of de Duitse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui    language
    Click Element    ${DeWorld}
    Click Element    ${ES}
    Sleep    1s
    Element Text Should Be    ${inloggenSE}    Iniciar sesión 
    Element Text Should Be    ${SorterenSE}    Ordenar
    Element Text Should Be    ${PrijsKlasseSE}    Rango de precios
    Element Text Should Be    ${ZoekenSE}    Buscar
    Element Text Should Be    ${OpCategorieSE}    Por categoría:
    Element Text Should Be    ${OpMerkSE}    Por marca:


Verifieer Franse taalinstelling
    [Documentation]    Deze testcase controleert of de Franse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui    language
    Click Element    ${Esworld}
    Click Element    ${FR}
    Sleep    1s
    Element Text Should Be    ${inloggenFR}    Se connecter
    Element Text Should Be    ${SorterenFR}    Trier
    Element Text Should Be    ${PrijsKlasseFR}    Fourchette de prix
    Element Text Should Be    ${ZoekenFR}    Rechercher
    Element Text Should Be    ${OpCategorieFR}    Par catégorie:
    Element Text Should Be    ${OpMerkFR}    Par marque:
    

Verifieer Nederlandse taalinstelling
    [Documentation]    Deze testcase controleert of de Nederlandse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui
    Click Element    ${Frworld}
    Click Element    ${NL}
    Sleep    1s
    Element Text Should Be    ${InloggenNL}    Inloggen
    Element Text Should Be    ${SorterenNL}    Sorteren
    Element Text Should Be    ${PrijsKlasseNL}    Prijsklasse
    Element Text Should Be    ${ZoekenNL}    Zoeken
    Element Text Should Be    ${OpCategorieNL}    Op categorie:
    Element Text Should Be    ${OpMerkNL}    Op merk:


Verifieer Turkse taalinstelling
    [Documentation]    Deze testcase controleert of de Turkse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui
    Click Element    ${NlWorld}
    Click Element    ${TR}
    Sleep    1s
    Element Text Should Be    ${InloggenTR}    Giriş Yap
    Element Text Should Be    ${SorterenTR}    Sırala
    Element Text Should Be    ${PrijsKlasseTR}    Fiyat Aralığı
    Element Text Should Be    ${ZoekenTR}    Ara
    Element Text Should Be    ${OpCategorieTR}    Kategoriye göre:
    Element Text Should Be    ${OpMerkTR}    Markaya göre:
        

Verifieer Engelse taalinstelling    
    [Documentation]    Deze testcase controleert of de Engelse taalinstelling zichtbaar is.
    [Tags]    smoke    homepage    ui
    #klik op wereldbolletje
    Click Element    ${Trworld}
    #selecteer Engels
    Click Element    ${EN}
    Sleep    1s
    Element Text Should Be    ${SignIn}    Sign in
    Element Text Should Be    ${SorterenEN}    Sort
    Element Text Should Be    ${PrijsKlasseEN}    Price Range
    Element Text Should Be    ${ZoekenEN}       Search
    Element Text Should Be    ${OpCategorieEN}    By category:
    Element Text Should Be    ${OpMerkEN}    By brand:

Verifieer dat alle menu-items onder category werken
    Click Element               ${Categories}  
   Element Should Be Visible   ${HandTools}  
   
    Click Element               ${HandTools}  

    Click Element               ${Categories}  
    Element Should Be Visible   ${PowerTools}  
    Click Element               ${PowerTools}

     Click Element               ${Categories}  
   Element Should Be Visible   ${Other}       
    Click Element               ${Other}       

    Click Element               ${Categories}  
    Element Should Be Visible   ${SpecialTools}
    Click Element               ${SpecialTools}

    Click Element               ${Categories}  
    Element Should Be Visible   ${Rentals}
    Click Element               ${Rentals}

Controleer of gebruiker is ingelogd
    Element Should Be Visible    ${MyAccount}
    Element Should Be Visible    ${AccountName}