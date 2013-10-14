Feature: Search by title
  In order to find a book
  As a team member
  I want to search by title

  Scenario: Search for non existant book
    Given the library is empty
    When I search for title 'Monkey'
    Then I get no results

  Scenario: Search for non existant book
    Given the library contains a book called 'Cucumber'
    And the library contains a book called 'Gibbon'
    And the library contains a book called 'Green'
    When I search for title 'Monkey'
    Then I get no results

  Scenario: Search for an existing book
    Given the library contains a book called 'Cucumber'
    And the library contains a book called 'Mondays'
    When I search for title 'Cucumber'
    Then I get 1 results

  Scenario: Search with a partial match
    Given the library contains a book called 'Psychology'
    And the library contains a book called 'Sociology'
    And the library contains a book called 'History'
    When I search for title 'ology'
    Then I get 2 results

