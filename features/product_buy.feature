Feature: Product buying process

  Scenario: Checkout shopping cart
    Given "MacBook" with quantity "1" is in the shopping cart
    When user clicks on the "Checkout" button
    Then checkout page is opened


  Scenario: Checkout options
