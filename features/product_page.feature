# Created by xdolej09 at 10.04.2020
Feature: getting product information
  # Enter feature description here

  Scenario: product description showing
    Given a web browser is at opencart product page
    When user clicks on button Description
    And button Description is not selected
    Then product description is shown


  Scenario: product specification showing
    Given a web browser is at opencart product page
    When user clicks on button Specification
    And button Specification is not selected
    Then product specification is shown


  Scenario: product reviews showing
    Given a web browser is at opencart product page
    When user clicks on button Reviews
    And button Reviews is not selected
    Then product review is shown