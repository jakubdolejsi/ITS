# Created by xdolej09 at 10.04.2020
Feature: product selecting
  # Enter feature description here

  Background:
    Given a web browser is at opencart home page


  Scenario: Choose product from featured
    Given a web browser is at opencart home page
    When the user clicks on product in featured section
    Then product page is shown


  Scenario: Choose product from search field
    Given a web browser is at opencart home page
    When user types product name in the search field
    Then error is thrown


  Scenario: Choose product from bar with dropdown menu
    Given a web browser is at opencart home page
    When use hovers pointer at concrete category
    Then Dropdown menu has appeared


  Scenario: choose product form bar without dropdown menu
    Given a web browser is at opencart home page
    When user clicks in concrete category
    Then category page is shown

