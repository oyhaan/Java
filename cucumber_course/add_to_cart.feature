Feature: Add to cart
        As a User, 
        I want to add products to my Cart 
        so that I can purchase one or more items in one transaction.

  Scenario Outline: User to add a product to cart on the Store or Filter page
    Given User has no products in the cart
    And User is on the "<page_name>" Page
    When User clicks on "ADD TO CART" button of any product
    Then the "ADD TO CART" button should change to "ADD TO CART ✔️"
    And a "View cart" link should appear below the "ADD TO CART ✔️" button
    And the shopping cart icon number should be incremented by one

    Examples:
      | page_name   |
      | Store       |
      | Men         |
      | Women       |
      | Accessories |

  Scenario Outline: User to add a product to cart on Product Details Page
    Given User has no products in the cart
    And User is on the "<page_name>" Page
    When User clicks on any product
    And User clicks on "ADD TO CART" button
    Then a banner displaying the number and type of product added should be shown
    And a "VIEW CART" button should be displayed in the banner
    And the shopping cart icon number should be incremented by the number of products in the field

    Examples:
      | page_name   |
      | Store       |
      | Men         |
      | Women       |
      | Accessories |

  Scenario Outline: User to add another product to cart on Store or Filter Pages
    Given User has atleast one "<first_product_name>" in the cart
    And User is on the "<page_name>" Page
    When User click on "ADD TO CART" button of "<second_product_name>"
    Then the "ADD TO CART" button should change to "ADD TO CART ✔️"
    And a "View cart" link should appear below the "ADD TO CART ✔️" button
    And the shopping cart icon number should be incremented by one

    Examples:
      | page_name   | first_product_name | second_product_name             |
      | Store       | Blue Shoes         | Anchor Bracelet                 |
      | Store       | Blue Shoes         | Blue Shoes                      |
      | Men         | Basic Blue Jeans   | Basic Blue Jeans                |
      | Men         | Basic Blue Jeans   | Dark Brown Jeans                |
      | Women       | Blue Denim Shorts  | Black Over-the-shoulder Handbag |
      | Women       | Blue Denim Shorts  | Blue Denim Shorts               |
      | Accessories | Anchor Bracelet    | Black Over-the-shoulder Handbag |

  Scenario Outline: User to add another product on Product Details Page
    Given User has atleast one "<first_product_name>" in the cart
    And User is on the "<page_name>" Page
    When User click on <"second_product_name">
    And User click on "ADD ON CART" button
    Then a banner displaying the number and type of product added should be shown
    And a "VIEW CART" button should be displayed in the banner
    And the shopping cart icon number should be incremented by the number of products in the field

    Examples:
      | page_name   | first_product_name | second_product_name             |
      | Store       | Blue Shoes         | Anchor Bracelet                 |
      | Store       | Blue Shoes         | Blue Shoes                      |
      | Men         | Basic Blue Jeans   | Basic Blue Jeans                |
      | Men         | Basic Blue Jeans   | Dark Brown Jeans                |
      | Women       | Blue Denim Shorts  | Black Over-the-shoulder Handbag |
      | Women       | Blue Denim Shorts  | Blue Denim Shorts               |
      | Accessories | Anchor Bracelet    | Black Over-the-shoulder Handbag |


      
# Scenario Outline: User to add an existing product to cart on Store or Filter Pages
    #   Given User has atleast one "<product_name>" in the cart
    #   And User is on the "<page_name>" Page
    #   When User click on "ADD TO CART" button of "<product_name>"
    #   Then the "ADD TO CART" button should change to "ADD TO CART ✔️"
    #   And a "View cart" link should appear below the "ADD TO CART ✔️" button
    #   And the shopping cart icon number should be incremented by one
    # Examples:
    #   | page_name    | product_name|
    #   | Store        | Blue Shoes|
    #   | Men          | Basic Blue Jeans|
    #   | Women        | Blue Denim Shorts |
    #   | Accessories  | Anchor Bracelet |
    # Scenario Outline: User to add an existing product on Product Details Page
    #   Given User has atleast one "<product_name>" in the cart
    #   And User is on the "<page_name>" Page
    #   When User click on <"product_name">
    #   And User click on "ADD ON CART" button
    #   Then the "ADD TO CART" button should change to "ADD TO CART ✔️"
    #   And a "View cart" link should appear below the "ADD TO CART ✔️" button
    #   And the shopping cart icon number should be incremented by one
    # Examples:
    #   | page_name    | product_name|
    #   | Store        | Blue Shoes|
    #   | Men          | Basic Blue Jeans|
    #   | Women        | Blue Denim Shorts |
    #   | Accessories  | Anchor Bracelet |
