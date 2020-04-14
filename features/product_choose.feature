# Created by Jakub at 14.04.2020
Feature: Product choosing

  Scenario: Choose product from search bar
    Given web browser is opened at home page
    When user types "MacBook" into "Search" bar
    Then error

   Scenario: choose product from featured
     Given web browser is at home page
     When user clicks on "MacBook" product
     And "MacBook" product is available
     Then "MacBook" page is opened
