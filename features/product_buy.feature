Feature: Product buying process

  Background:
    Given "MacBook" with quantity "1" is in the shopping cart

  Scenario: Checkout shopping cart as guest
    Given web browser is at Shopping cart page
    And user is not logged in
    When user clicks on the "Checkout" button
    Then checkout page is opened at step "1"

  Scenario: Checkout options
    Given web browser is at Checkout page on step "1"
    And Guest Checkout is selected
    When user clicks on the "Continue" button
    Then step "2" is shown

  Scenario: Checkout shopping cart as logged in user
    Given web browser is at Shopping cart page
    And user is logged in
    When user clicks on the "Checkout" button
    Then step "2" is shown

  Scenario: Billing details as logged user with same address
    Given web browser is at Checkout page on step "2"
    And user is logged in
    And "I want to use an exisitng address" is checked
    When user clicks on "Continue" button
    Then step "3" is shown

  Scenario: Billing details as logged user with different address
    Given web browser is at Checkout page on step "2"
    And user is logged in
    And "I


  Scenario: Billing details with guest
