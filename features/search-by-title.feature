Feature: Search by title
	In order to find a book
	As a team member
	I want to search by title

Scenario: Search for non existant book
	Given the library is empty
	When I search for title 'Banana'
	Then I get no results

Scenario: Search for non existant book
	Given the library contains 1 book called 'Cucumber'
	When I search for title 'Banana'
	Then I get no results
