# Created by Jakub at 11.04.2020
Feature: The one when add item to the cart
  # Enter feature description here

  Scenario: Add iMAC to the cart
    Given web browser is at product page of iMAC
    And iMac is on in the Stock
    Then user clicks on Add to Cart button
    When one iMac is added to user's cart
