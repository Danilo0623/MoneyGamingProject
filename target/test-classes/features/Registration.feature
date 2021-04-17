@registration
  Feature: Registration

    Background:
      Given click on Join Now button and land on registration page

    Scenario: The message "This field is required" appears under the date of birth box
      When select the title "Mr", enter first "Danilo" and surname name "Nikolic"
      And  accept the Terms and Conditions and submit the form
      Then verify the message "This field is required" appears under the date of birth box


