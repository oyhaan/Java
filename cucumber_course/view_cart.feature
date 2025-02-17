Feature: View Cart 
    As a User,
    I want to be able to view my cart before checkout,
    so that I can make an informed decision before checking out.

    Scenario: User to visit Cart with atleast one product in the Cart
      Given the User has atleast one product in the cart
      And the User is on the "Cart" Page
      Then there should be a title saying "CART"  
      And all products added to the cart should be displayed in a table  
      And every table row should have an "X" button, product image, product name, product price, product quantity, and product subtotal  
      And there should be an "UPDATE CART" button  
      And there should be a "Cart Totals" table containing a subtotal, shipping price, CA State Tax, and Total  
      And there should be a "PROCEED TO CHECKOUT" button  


    Scenario: User to visit Cart with no product in the Cart
       Given the User has atleast one product in the cart
       And the User is on the "Cart" Page
       Then there should be a title saying "CART"  
       And there should be a "Your cart is currently empty" message displayed  
       And there should be a "RETURN TO SHOP" button  


      