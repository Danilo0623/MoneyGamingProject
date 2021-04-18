@registrationPassword
Feature: RegistrationPassword

  Background:
    Given click on Join Now button and land on registration page

  @validPassword
  Scenario Outline: Registration with valid password
    When User fills out all required fields "<Title>", "<First Name>", "<Surname>", "<Day>", "<Month>", "<Year>", "<Email Address>", "<Telephone>", "<Mobile>", "<Address 1>", "<City>", "<County>", "<Postcode>", "<Country>", "<Username>", "<Password>", "<Re-type Password>", "<Security question 1>", "<Answer 1>", "<Security question 2>", "<Answer 2>", "<Currency>"
    And  submits the form
    Then should be able to successfully register

    Examples:
      | Title | First Name | Surname | Day | Month   | Year | Email Address     | Telephone  | Mobile     | Address 1     | City      | County | Postcode | Country        | Username | Password     | Re-type Password | Security question 1                      | Answer 1   | Security question 2          | Answer 2 | Currency        |
      | Mr    | Danilo     | Nikolic | 5   | March   | 1990 | nikolic@gmail.com | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | SWEDEN         | hello    | HelloWorld1# | HelloWorld1#     | What was your childhood nickname?        | Dan        | What is your favorite color? | Blue     | Pounds Sterling |
      | Ms    | Lora       | Lars    | 3   | January | 1993 | lars@gmail.com    | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | UNITED KINGDOM | hello1   | HelloWorld1# | HelloWorld1#     | In what city or town was your first job? | Las Vegas  | Where were you born?         | USA      | US Dollars      |
      | Mrs   | Isabella   | Smith   | 12  | May     | 1985 | smith@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | IRELAND        | hello2   | HelloWorld1# | HelloWorld1#     | Who was your childhood hero?             | My Brother | What is your favorite color? | Green    | Euros           |
      | Miss  | Ava        | Jones   | 24  | April   | 1989 | jones@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | FINLAND        | hello3   | HelloWorld1# | HelloWorld1#     | What was your childhood nickname?        | Tony       | Where were you born?         | UK       | Pounds Sterling |
      | Mr    | Mark       | Garcia  | 2   | June    | 1980 | garcia@gmail.com  | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | NEW ZEALAND    | hello4   | HelloWorld1# | HelloWorld1#     | In what city or town was your first job? | London     | Where were you born?         | France   | Euros           |


  @emptyPassword
  Scenario Outline: Registration with empty password
    When User fills out all required fields and leaves password field empty "<Title>", "<First Name>", "<Surname>", "<Day>", "<Month>", "<Year>", "<Email Address>", "<Telephone>", "<Mobile>", "<Address 1>", "<City>", "<County>", "<Postcode>", "<Country>", "<Username>", "<Re-type Password>", "<Security question 1>", "<Answer 1>", "<Security question 2>", "<Answer 2>", "<Currency>"
    And  submits the form
    Then Verify The message "This field is required" should be displayed under the Choose Password field

    Examples:
      | Title | First Name | Surname | Day | Month   | Year | Email Address     | Telephone  | Mobile     | Address 1     | City      | County | Postcode | Country        | Username | Re-type Password | Security question 1                      | Answer 1   | Security question 2          | Answer 2 | Currency        |
      | Mr    | Danilo     | Nikolic | 5   | March   | 1990 | nikolic@gmail.com | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | SWEDEN         | hello    | HelloWorld1#     | What was your childhood nickname?        | Dan        | What is your favorite color? | Blue     | Pounds Sterling |
      | Ms    | Lora       | Lars    | 3   | January | 1993 | lars@gmail.com    | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | UNITED KINGDOM | hello1   | HelloWorld1#     | In what city or town was your first job? | Las Vegas  | Where were you born?         | USA      | US Dollars      |
      | Mrs   | Isabella   | Smith   | 12  | May     | 1985 | smith@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | IRELAND        | hello2   | HelloWorld1#     | Who was your childhood hero?             | My Brother | What is your favorite color? | Green    | Euros           |
      | Miss  | Ava        | Jones   | 24  | April   | 1989 | jones@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | FINLAND        | hello3   | HelloWorld1#     | What was your childhood nickname?        | Tony       | Where were you born?         | UK       | Pounds Sterling |
      | Mr    | Mark       | Garcia  | 2   | June    | 1980 | garcia@gmail.com  | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | NEW ZEALAND    | hello4   | HelloWorld1#     | In what city or town was your first job? | London     | Where were you born?         | France   | Euros           |


  @shortPassword
  Scenario Outline: Registration with short password
    When User fills out all required fields and insert short password "<Title>", "<First Name>", "<Surname>", "<Day>", "<Month>", "<Year>", "<Email Address>", "<Telephone>", "<Mobile>", "<Address 1>", "<City>", "<County>", "<Postcode>", "<Country>", "<Username>", "<Password>", "<Re-type Password>", "<Security question 1>", "<Answer 1>", "<Security question 2>", "<Answer 2>", "<Currency>"
    Then Verify the message "The minimum length is 6 characters" should be displayed under the Choose Password field

    Examples:
      | Title | First Name | Surname | Day | Month   | Year | Email Address     | Telephone  | Mobile     | Address 1     | City      | County | Postcode | Country        | Username | Password | Re-type Password | Security question 1                      | Answer 1   | Security question 2          | Answer 2 | Currency        |
      | Mr    | Danilo     | Nikolic | 5   | March   | 1990 | nikolic@gmail.com | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | SWEDEN         | hello    | He1#     | He1#             | What was your childhood nickname?        | Dan        | What is your favorite color? | Blue     | Pounds Sterling |
      | Ms    | Lora       | Lars    | 3   | January | 1993 | lars@gmail.com    | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | UNITED KINGDOM | hello1   | W1#      | W1#              | In what city or town was your first job? | Las Vegas  | Where were you born?         | USA      | US Dollars      |
      | Mrs   | Isabella   | Smith   | 12  | May     | 1985 | smith@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | IRELAND        | hello2   | Hello    | Hello            | Who was your childhood hero?             | My Brother | What is your favorite color? | Green    | Euros           |
      | Miss  | Ava        | Jones   | 24  | April   | 1989 | jones@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | FINLAND        | hello3   | rld1#    | rld1#            | What was your childhood nickname?        | Tony       | Where were you born?         | UK       | Pounds Sterling |
      | Mr    | Mark       | Garcia  | 2   | June    | 1980 | garcia@gmail.com  | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | NEW ZEALAND    | hello4   | Hed1     | H1               | In what city or town was your first job? | London     | Where were you born?         | France   | Euros           |

  @invalidPassword
  Scenario Outline: Registration with invalid password
    When User fills out all required fields and insert invalid password "<Title>", "<First Name>", "<Surname>", "<Day>", "<Month>", "<Year>", "<Email Address>", "<Telephone>", "<Mobile>", "<Address 1>", "<City>", "<County>", "<Postcode>", "<Country>", "<Username>", "<Password>", "<Re-type Password>", "<Security question 1>", "<Answer 1>", "<Security question 2>", "<Answer 2>", "<Currency>"
    And  submits the form
    Then Verify the message "The Password must contain at least 1 number and 1 special character" should be displayed under the Choose Password field

    Examples:
      | Title | First Name | Surname | Day | Month   | Year | Email Address     | Telephone  | Mobile     | Address 1     | City      | County | Postcode | Country        | Username | Password | Re-type Password | Security question 1                      | Answer 1   | Security question 2          | Answer 2 | Currency        |
      | Mr    | Danilo     | Nikolic | 5   | March   | 1990 | nikolic@gmail.com | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | SWEDEN         | hello    | Welcome  | Welcome          | What was your childhood nickname?        | Dan        | What is your favorite color? | Blue     | Pounds Sterling |
      | Ms    | Lora       | Lars    | 3   | January | 1993 | lars@gmail.com    | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | UNITED KINGDOM | hello1   | Welcome1 | Welcome1         | In what city or town was your first job? | Las Vegas  | Where were you born?         | USA      | US Dollars      |
      | Mrs   | Isabella   | Smith   | 12  | May     | 1985 | smith@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | IRELAND        | hello2   | Welcome# | Welcome#         | Who was your childhood hero?             | My Brother | What is your favorite color? | Green    | Euros           |
      | Miss  | Ava        | Jones   | 24  | April   | 1989 | jones@gmail.com   | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | FINLAND        | hello3   | 1111111  | 1111111          | What was your childhood nickname?        | Tony       | Where were you born?         | UK       | Pounds Sterling |
      | Mr    | Mark       | Garcia  | 2   | June    | 1980 | garcia@gmail.com  | 7031234567 | 7031234567 | Du Barry Lane | Las Vegas | Clark  | 89102    | NEW ZEALAND    | hello4   | #######  | #######          | In what city or town was your first job? | London     | Where were you born?         | France   | Euros           |
