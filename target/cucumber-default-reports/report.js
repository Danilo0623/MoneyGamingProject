$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/Registration.feature");
formatter.feature({
  "name": "Registration",
  "description": "",
  "keyword": "Feature",
  "tags": [
    {
      "name": "@registration"
    }
  ]
});
formatter.background({
  "name": "",
  "description": "",
  "keyword": "Background"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "click on Join Now button and land on registration page",
  "keyword": "Given "
});
formatter.match({
  "location": "com.moneygaming.stepDefinitions.RegistrationStepDefinition.click_on_Join_Now_button_and_land_on_registration_page()"
});
formatter.result({
  "status": "passed"
});
formatter.scenario({
  "name": "The message \"This field is required\" appears under the date of birth box",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@registration"
    }
  ]
});
formatter.step({
  "name": "select the title \"Mr\", enter first \"Danilo\" and surname name \"Nikolic\"",
  "keyword": "When "
});
formatter.match({
  "location": "com.moneygaming.stepDefinitions.RegistrationStepDefinition.select_the_title_enter_first_and_surname_name(java.lang.String,java.lang.String,java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "accept the Terms and Conditions and submit the form",
  "keyword": "And "
});
formatter.match({
  "location": "com.moneygaming.stepDefinitions.RegistrationStepDefinition.accept_the_Terms_and_Conditions_and_submit_the_form()"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "verify the message \"This field is required\" appears under the date of birth box",
  "keyword": "Then "
});
formatter.match({
  "location": "com.moneygaming.stepDefinitions.RegistrationStepDefinition.verify_the_message_appears_under_the_date_of_birth_box(java.lang.String)"
});
formatter.result({
  "status": "passed"
});
formatter.after({
  "status": "passed"
});
});