# Created by Jakub at 14.04.2020
Feature: Product choosing
  Background:
    Given "MacBook" is available

  Scenario: Choose product from search bar
    Given web browser is opened at home page
    When user types "MacBook" into "Search" bar
    Then 404 Not Found

   Scenario: choose product from featured
     Given web browser is at home page
     And "MacBook" is in the "Featured" section
     When user clicks on "MacBook" product
     Then "MacBook" product page is opened

  Scenario: choose product from section
    Given web browser is at "Macs" category inside "Laptops & Notebooks"
    When user clicks on "MacBook"
    Then "MacBook" product page is opened