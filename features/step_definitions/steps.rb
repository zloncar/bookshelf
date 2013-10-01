Given(/^an empty bookshelf$/) do
  create_bookshelf
end

When(/^I search for a book$/) do
  search_titles( 'Banana' )
end

Then(/^shows no results found$/) do
  expect( search_results ).to be_empty
end

Given(/^a bookshelf with one book$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I search for a non existent book$/) do
  pending
end

