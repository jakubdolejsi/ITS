# Created by Jakub at 14.04.2020
Feature: User account operations

  Scenario: Create new account
    Given web browser is at register page
    When user fills all required credentials
    And user accepts privacy policy
    And user clicks on "Continue" button
    Then user account is created


  Scenario: Login into existing account
    Given web browser is at login page
    When user fills all requried credentials
    And user click on "Login" button
    Then user is logged in

  Scenario: Logout
    Given web browser is at e-commerce site
    And user is logged in
    When user clicks on "Logout" button
    Then user is logged out