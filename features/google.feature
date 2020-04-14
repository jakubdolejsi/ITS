# Created by Jakub at 14.04.2020
Feature: testing Google main page

  Scenario: visit google page and check
    Given internet connection is available
    When user visits google
    Then title should be "Google"

