Feature: 1. Filter feature

Scenario: Transports
    Given I am on create filter page
    When I open transports params
    Then I submit filter

Scenario: DeleteFilterTransports
    Given I close buy page
    When I open menu
    When I open saved filtres page
    When I open saved filter
    Then I delete saved filter

Scenario: Vacancy
    Given I close buy page
    When I open vacancy params
    Then I submit vacancy filter

Scenario: DeleteFilterVacancy
    Given I close buy page
    When I open menu
    When I open saved filtres page
    When I open saved filter
    Then I delete saved filter

Scenario: Property
    Given I close buy page
    When I open property params
    Then I submit property filter

Scenario: DeleteFilterProperty
    Given I close buy page
    When I open menu
    When I open saved filtres page
    When I open saved filter
    Then I delete saved filter
