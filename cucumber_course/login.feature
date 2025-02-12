Feature: Login
    As a register User,
    I want to Login with valid credentials
    So that I can access my account

  Background:
    Given User is on the "Account" page

  Scenario Outline: User to Login with Valid Username.
    And User enters "<username>"
    And User enters "<password>"
    And User clicks on the "Login" button
    Then the "Dashboard" page should be displayed

    Examples:
      | username | password |
      | Janedoe  | Pass1!   |
      | John123  | P1234@   |

  Scenario Outline: User to Login with Valid Email Address
    And User enters "<email_address>"
    And User enters "<password>"
    And User clicks on the "Login" button
    Then the "Dashboard" page should be displayed

    Examples:
      | email_address    | password |
      | jane@example.com | Pass1!   |
      | John@gmail.com   | P1234@   |

  Scenario Outline: User to Not Login with invalid credentials.
    And User enters "<username_or_email>"
    And User enters "<password>"
    And User clicks on the "Login" button
    Then error message "<error_message>" is displayed

    Examples:
      | username_or_email    | password | error_message                                                                                                            |
      | AA                   | Password | The password you entered for the username AA is incorrect. Lost your password?                                           |
      | gasangwams@gmail.com |      123 | The password you entered for the email address gasangwams@gmail.com is incorrect. Lost your password?                    |
      | a@gmail              | Pass12!  | The username a@gmail is not registered on this site. If you are unsure of your username, try your email address instead. |
      | AAaa                 | P12!ass  | The username AAaa is not registered on this site. If you are unsure of your username, try your email address instead.    |
