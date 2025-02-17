Feature: Remove Products from Cart
    As a User,
    I want to able to remove a product from the cart,
    so that I can purchase what I want.

  Scenario Outline: User to remove a product from cart when he has more than one product
    Given User has "<product_to_delete>" and other products in the cart
    And User is on the "Cart" Page
    When User clicks on "X" button of the "<product_to_delete>"
    Then the "<product_to_delete>" should be removed from the cart
    And a banner with ""<product_to_delete>" removed. Undo?" should appear
    And the "Cart Totals" table’s Subtotal value should be updated correctly based on the quantity of products in the cart
    And the "Cart Totals" table’s CA State Tax value should be updated to a new value
    And the shopping cart icon number should be incremented or decremented by the quantity added or removed

    Examples:
      | product_to_delete |
      | Basic Blue Jeans  |
      | Blue Shoes        |

  Scenario Outline: User to remove the only product in the cart
    Given User has only "<product_to_delete>" in the cart
    And User is on the "Cart" Page
    When User clicks on "X" button of the "<product_to_delete>"
    Then the product should be removed from the cart
    And a banner with ""<product_to_delete>" removed. Undo?" should appear
    And the "Your cart is empty" message should be displayed
    And the "RETURN TO SHOP" button should appear
    And the "Cart Totals" table should disappear
    And the shopping cart icon number should be updated accordingly

    Examples:
      | product_to_delete |
      | Basic Blue Jeans  |
      | Blue Shoes        |


  Scenario Outline: User to remove a product and Undo the changes.
   Given User has "<product_to_delete>" in the Cart
   And User is on the "Cart" Page
   When User clicks on "X" button of one of the products in the cart
   And User clicks on the "Undo?" link
   Then the product should be re-added to the cart  
   And the banner with ""<product_to_delete>" removed. Undo?" should disappear  
   And the "Cart Totals" table’s Subtotal value should be updated correctly based on the quantity of products in the cart  
   And the "Cart Totals" table’s CA State Tax value should be updated to a new value  
   And the shopping cart icon number should be incremented by the quantity added back to the cart  

   Examples:
      | product_to_delete |
      | Basic Blue Jeans  |
      | Blue Shoes        |




