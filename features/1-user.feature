Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open filter params
    Then I submit filter

Scenario: Empty_filter
    Given I am on buy page
    When I open filter params
    Then I submit empty filter
    Then I check if its not saved

Scenario: Open_settings
    Given I am on buy page
    When I open menu
    Then I open Settings
    Then I press Settings
