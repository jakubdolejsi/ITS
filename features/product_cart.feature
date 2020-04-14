Feature: Product cart

  Background: "MacBook" is available

  Scenario Outline: add product to cart
    Given web browser is at "MacBook" product page
    And in "Qty" field is <qty>
    When user clicks on the "Add to Cart" button
    Then "MacBook" is added into the shopping cart with quantity <qty>

    Examples:
      | qty |
      | 1   |
      | 5   |

  Scenario: Remove product from cart
    Given web browser is at "Shopping Cart" page
    And "MacBook" is in the cart
    When user clicks on the "Remove" button
    Then "MacBook" is removed from the shopping cart


  Scenario: Update product in shopping cart
    Given web browser is at "Shopping cart" page
    And "MacBook" is in the cart with quantity "5"
    When user changes quantity to "1"
    And clicks to "Update" button
    Then "MacBook" is in the shopping cart with quantity "1"