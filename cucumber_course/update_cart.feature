Feature: Update Cart
        As a User,
        I want to be able to update the quantity of the products in the cart,
        so that I can buy the correct amount of products.

  Scenario Outline: User to Update Quantity of Product with Positive Integer in the Cart
    Given User has atleast one product in the cart
    And User is on the "Cart" Page
    When User clicks "Quantity" input of one product
    And User inputs a new "<quantity>"
    And User clicks on "UPDATE CART" button
    Then a banner with "Cart updated" should appear
    And the subtotal of the updated product should be updated correctly based on the quantity and price
    And the "Cart Totals" table’s Subtotal value should be updated correctly based on the quantity of products in the cart
    And the "Cart Totals" table’s CA State Tax value should be updated to a new value
    And the shopping cart icon number should be incremented or decremented by the quantity added or removed

    Examples:
      | quantity |
      |        5 |
      |       10 |

  Scenario: User to Update Quantity of Product with Zero.
    Given User has atleast one product in the cart
    And User is on the "Cart" Page
    When User clicks "Quantity" input
    And User inputs zero
    And User clicks on "UPDATE CART" button
    Then the product should be removed from the cart
    And a banner with "Cart updated" should appear
    And the subtotal of the updated product should be updated correctly based on the quantity and price
    And the "Cart Totals" table’s Subtotal value should be updated correctly based on the quantity of products in the cart
    And the "Cart Totals" table’s CA State Tax value should be updated to a new value
    And the shopping cart icon number should be incremented or decremented by the quantity added or removed

  Scenario Outline: System to handle to Update Quantity with Invalid amount
    Given User has atleast one product in the cart
    And User is on the "Cart" Page
    When User clicks on the "Quantity" input of one product
    And User inputs an invalid "<quantity>"
    And User clicks on "UPDATE CART" button
    Then a validation message should appear telling the User "Value must greater or equal to zero"

    Examples:
      | quantity |
      |       -5 |
      |      -10 |
