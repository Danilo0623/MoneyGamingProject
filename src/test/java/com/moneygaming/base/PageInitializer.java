package com.moneygaming.base;

import com.moneygaming.pages.HomePage;
import com.moneygaming.pages.RegistrationPage;

public class PageInitializer extends BaseClass {

    public static HomePage homePage;
    public static RegistrationPage registrationPage;

    public static void pageObjectsInitializer() {
        homePage = new HomePage();
        registrationPage = new RegistrationPage();
    }
}
