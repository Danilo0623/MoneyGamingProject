package com.moneygaming.stepDefinitions;

import com.moneygaming.utils.CommonMethods;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class RegistrationStepDefinition extends CommonMethods {

    @Given("click on Join Now button and land on registration page")
    public void click_on_Join_Now_button_and_land_on_registration_page() {
        homePage.clickOnJoinNow();
    }

    @When("select the title {string}, enter first {string} and surname name {string}")
    public void select_the_title_enter_first_and_surname_name(String title, String firstName, String surname) {
        selectDDValue(registrationPage.titleDropdown, title);
        sendText(registrationPage.firstNameField, firstName);
        sendText(registrationPage.lastNameField, surname);
    }

    @When("accept the Terms and Conditions and submit the form")
    public void accept_the_Terms_and_Conditions_and_submit_the_form() {
        click(registrationPage.checkboxTermsAndConditions);
        click(registrationPage.joinNowButton);
    }


    @Then("verify the message {string} appears under the date of birth box")
    public void verify_the_message_appears_under_the_date_of_birth_box(String dobExpectedRequiredMessage) {
        waitForVisibility(registrationPage.dobRequiredErrorMessage);
        Assert.assertTrue(registrationPage.dobRequiredErrorMessage.isDisplayed());
        String dobActualReqErrorMessage = getTextMethod(registrationPage.dobRequiredErrorMessage);
        Assert.assertEquals("Verifying DOB Required Error Message is Displayed", dobExpectedRequiredMessage, dobActualReqErrorMessage);
    }
}
