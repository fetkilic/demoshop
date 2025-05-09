*** Variables ***

# Locators
# Menu
${Home}                 //a[text()='Home']
${Categories}           //a[@data-test='nav-categories']
${HandTools}            //a[text()='Hand Tools']
${PowerTools}           //a[text()='Power Tools']
${Other}                //a[text()='Other']
${SpecialTools}         //a[text()='Special Tools']
${Rentals}              //a[text()='Rentals']
${Contact}              //a[text()='Contact']
${SignIn}               //a[text()='Sign in']
${SignOut}              //a[text()='Sign out']

${MenuMyAcc}            //a[text()='My account']
${MenuMyFavs}           //a[text()='My favorites']
${MenuMyProfile}         //a[text()='My profile']
${MenuMyinvoices}         //a[text()='My invoices']
${MenuMyMessages}     //a[text()='My messages']


${EnWorld}                  //button[contains(text(), 'EN')]
${EN}                //a[contains(text(), 'EN')]
${SorterenEN}    //h4[contains(., 'Sort')]
${PrijsKlasseEN}    //h4[contains(., 'Price Range')]
${ZoekenEN}    //h4[contains(., 'Search')]
${OpCategorieEN}    //h4[contains(., 'By category:')]
${OpMerkEN}    //h4[contains(., 'By brand:')]


${DE}                 //a[contains(text(), 'DE')]
${DeWorld}            //button[contains(text(), 'DE')]
${InloggenDE}         //a[contains(text(), 'Einloggen')]  
${SorterenDE}    //h4[contains(., 'Sortieren')]
${PrijsklasseDE}    //h4[contains(., 'Preisspanne')]
${ZoekenDE}    //h4[contains(., 'Suche')]
${OpCategorieDE}    //h4[contains(., 'Nach Kategorie:')]
${OpMerkDE}    //h4[contains(., 'Nach Marken:')]



${ES}                 //a[contains(text(), 'ES')]
${Esworld}            //button[contains(text(), 'ES')]
${InloggenSE}         //a[contains(text(), 'Iniciar sesión')]
${SorterenSE}    //h4[contains(., 'Ordenar')]
${PrijsKlasseSE}    //h4[contains(., 'Rango de precios')]
${ZoekenSE}    //h4[contains(., 'Buscar')]
${OpCategorieSE}    //h4[contains(., 'Por categoría:')]
${OpMerkSE}    //h4[contains(., 'Por marca:')]

${FR}                 //a[contains(text(), 'FR')]
${Frworld}            //button[contains(text(), 'FR')]
${InloggenFR}         //a[contains(text(), 'Se connecter')]
${SorterenFR}    //h4[contains(., 'Trier')]
${PrijsKlasseFR}    //h4[contains(., 'Fourchette de prix')]
${ZoekenFR}    //h4[contains(., 'Rechercher')]
${OpCategorieFR}    //h4[contains(., 'Par catégorie:')]
${OpMerkFR}    //h4[contains(., 'Par marque:')]


${NL}                 //a[contains(text(), 'NL')]
${NlWorld}            //button[contains(text(), 'NL')]
${InloggenNL}         //a[contains(text(), 'Inloggen')]
${SorterenNL}    //h4[contains(., 'Sorteren')]
${PrijsKlasseNL}    //h4[contains(., 'Prijsklasse')]
${ZoekenNL}    //h4[contains(., 'Zoeken')]
${OpCategorieNL}    //h4[contains(., 'Op categorie:')]
${OpMerkNL}    //h4[contains(., 'Op merk:')]

${TR}                //a[contains(text(), 'TR')]
${Trworld}            //button[contains(text(), 'TR')]
${InloggenTR}         //a[contains(text(), 'Giriş Yap')]
${SorterenTR}    //h4[contains(., 'Sırala')]
${PrijsKlasseTR}    //h4[contains(., ' Fiyat Aralığı')]
${ZoekenTR}    (//h4[contains(., 'Ara')])[2]
${OpCategorieTR}    //h4[contains(., 'Kategoriye göre:')]
${OpMerkTR}    //h4[contains(., 'Markaya göre:')]

# Footer Block
${footer}               //app-footer

# Footer Text
${FooterText}           //app-footer//p

# Footer Links
${git_locator}          //a[contains(text(), 'GitHub repo')]
${supp_locator}         //a[contains(text(), 'Support this project')]
${privacy_locator}      //a[contains(text(), 'Privacy Policy')]
${barn_locator}         //a[contains(text(), 'Barn Images')]
${unsplash_locator}     //a[contains(text(), 'Unsplash')]

# Website Logo
${logo}                 //*[@id="Layer_1"]

# Search
${searchbar}            //input[@id='search-query']
${searchButton}         //button[text()='Search']
${deleteTextButton}     //button[@data-test='search-reset']
${searchResult}        //h3[contains(text(), 'Searched for:')]
${noProductsFound}    //div[@data-test='no-results']
${Product1}    //h5[contains(text(), 'Combination Pliers')]


${AltTextProduct1}    //img[@alt='Combination Pliers']
${PriceProduct1}        //span[contains(text(), '$14.15')]
${PriceProduct2}    //span[contains(text(), '$12.01')]
${PriceProduct3}    //span[contains(text(), '$48.41')]
${PriceProduct4}    //span[contains(text(), '$14.24')]
${Product4OutOfStock}    //span[contains(text(), 'Out of stock')]
${PriceProduct5}    //span[contains(text(), '$9.17')]
${PriceProduct6}    //span[contains(text(), '$13.41')]
${PriceProduct7}    //span[contains(text(), '$12.58')]
${PriceProduct8}    //span[contains(text(), '$11.48')]
${PriceProduct9}    //span[contains(text(), '$11.14')]

${WinkelwagenEN}    //button[contains(@class, 'btn-success')]
${WinkelwagenCount}    //span[@data-test='cart-quantity']
${ProductName}    //span[@data-test='product-title']
${WinkelwagenPrijs}    //td[@data-test='cart-total']

${aantalVeld}    //input[@min='1'][@max='99']
${DeleteButtonWinkelwagen}    //a[contains(@class, 'btn-danger') and .//*[name()='svg' and contains(@class, 'fa-xmark')]]
${DeleteButtonFavs}    //button[contains(@class, 'btn-danger')]



${VeldUsername}      //input[@type='email']
${VeldPassword}     //input[@type='password']
${LoginButton}    //input[@type='submit']
${MyAccount}    //h1[text()='My account']
${AccountName}    //a[contains(text(),'F K')]
${LoginTitle}    //h3[text()='Login']

#Register accountpage
${register}    //a[contains(text(), 'Register')]
${FirstName}    //input[@id='first_name']
${LastName}    //input[@id='last_name']
${dateofBirth}    //input[@id='dob']
${Street}    //input[@id='street']
${postalCode}    //input[@id='postal_code']
${City}    //input[@id='city']
${State}    //input[@id='state']
${Country}    //select[@id='country']
${Phone}    //input[@id='phone']
${Email}    //input[@id='email']
${Password}    //input[@id='password']
${RegisterButton}    //button[@data-test='register-submit']

#validaties register accountpage
${ValidationFirstName}    //div[@data-test='first-name-error']
${ValidationLastName}    //div[@data-test='last-name-error']
${ValidatonDateofBirth}    //div[@data-test='dob-error'] 
${ValdiationStreet}    //div[@data-test='street-error']
${ValidationPostcode}    //div[@data-test='postal_code-error']
${ValidationCity}    //div[@data-test='city-error']
${ValidationState}    //div[@data-test='state-error']
${ValidationCountry}    //div[@data-test='country-error']
${ValidationPhone}    //div[@data-test='phone-error']
${ValidationEmail}    //div[@data-test='email-error']
${Validationpassword}    //div[@data-test='password-error']










${FavEN}    //button[@data-test='add-to-favorites']
${BevestigingWinkelwagenEN}    //div[contains(@class, 'toast-message') and contains(., 'Product added')]

${NoFavs}    //div[contains(text(), 'There are no favorites yet')]


${pointerHoog}    //span[@ngxsliderhandle and contains(@class, 'ngx-slider-pointer-max')]
${pointerLaag}    //span[@ngxsliderhandle and contains(@class, 'ngx-slider-pointer-min')]
                