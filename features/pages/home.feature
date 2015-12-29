Feature: Home

  Background:
    Given the app is properly setup
    When I visit the homepage

  Scenario: Key elements
    Then I should see the logo
    And I should see the description