package com.moneygaming.pages;

import com.moneygaming.utils.CommonMethods;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class HomePage extends CommonMethods {

    @FindBy(xpath = "//a[contains(@class, 'newUser')]")
    public WebElement joinNow;


    public void clickOnJoinNow() {
        click(joinNow);
    }

    public HomePage() {
        PageFactory.initElements(driver, this);
    }

}
