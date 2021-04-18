package com.moneygaming.pages;

import com.moneygaming.utils.CommonMethods;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class RegistrationPage extends CommonMethods {

    @FindBy(xpath = "//select[@id='title']")
    public WebElement titleDropdown;

    @FindBy(id = "forename")
    public WebElement firstNameField;

    @FindBy(name = "map(lastName)")
    public WebElement lastNameField;

    @FindBy(id = "checkbox")
    public WebElement checkboxTermsAndConditions;

    @FindBy(id = "form")
    public WebElement joinNowButton;

    @FindBy(xpath = "//label[@for='dob']")
    public WebElement dobRequiredErrorMessage;


    public RegistrationPage() {
        PageFactory.initElements(driver, this);
    }
}
