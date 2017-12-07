Feature: 1. Filter feature

Scenario: Signup
    Given I am on create filter page
    When I open transports params
    Then I submit filter

Scenario: Vacancy
    Given I close buy page
    When I open vacancy params
    Then I submit filter
Scenario: Vacancy
    Given I close buy page
    When I open property params
    Then I submit filter

Scenario: DeleteFilter
    Given I close buy page
    When I open menu
    Then I open saved filtres page
    Then I open saved filter
