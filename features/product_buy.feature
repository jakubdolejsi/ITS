Feature: Product buying process

  Background:
    Given "MacBook" with quantity "1" is in the shopping cart


  Scenario: Checkout options as guest
    Given web browser is at Checkout page on step "1"
    And Guest Checkout is selected
    When user clicks on the "Continue" button
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
