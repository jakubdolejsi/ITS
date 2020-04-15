# Created by Jakub at 14.04.2020
Feature: Product actions

  Scenario: add product to wish list
    Given a web browser is at opencart "MacBook" product page
    And user is logged in
    When user clicks on the black "Add to Wish List" button
    Then product is added into his wish list


  Scenario: compare product
    Given a web browser is at opencart "MacBook" product page
    When user click on "Compare this Product" button
    Then product is added into his product comparison