Feature: Payment methods
        As a User,
        I should be able to select different paymment methods
        so that i can pay with my preferred payment provider.

  Background:
    Given User has at least one item in the cart
    When User navigates to the "Checkout" page

  Scenario Outline: Checkout with Any Payment Method
    And User selects "<payment_method>" option
    And User fills in the "<first_name>", "<last_name>", "<country>", "<street_address>", "<town>", "<state>", <zipcode>, and "<email_address>" in "Billing Details" form
    When User clicks "PLACE ORDER" button
    Then the message "Thank you. Your order has been received." should be displayed
    And the "Order number", "date", "total", and "<payment_method>" should be displayed.

    Examples:
      | payment_method      | first_name | last_name | country       | street_address   | town     | state  | zipcode | email_address       |
      | Cash on Delivery    | John       | Doe       | United States | KK 567 St        | Kicukiro | Kigali |   55555 | testing@example.com |
      | Direct Bank Transer | Jane       | Smith     | China         | Xi Jin Ping Road | Beijing  | Wuhan  |    7777 | testing@china.com   |
