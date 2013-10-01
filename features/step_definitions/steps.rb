Given(/^an empty bookshelf$/) do
  create_bookshelf
end

Then(/^shows no results found$/) do
  expect( search_results ).to be_empty
end

Given(/^a bookshelf with one book$/) do
  create_bookshelf
  add_book("Ruby Programming")
end

When(/^I search for a non existent book$/) do
  search_titles( 'Banana' )
end

When(/^I search for a book$/) do
  search_titles( 'Ruby' )
end

Then(/^shows the book$/) do
  expect( search_results ).to eq ["Ruby Programming"]
end

Given(/^a bookshelf with a few books$/) do
  create_bookshelf
  add_book("Ruby Programming")
  add_book("Perl Programming")
  add_book("Java Programming")
  add_book("C# Programming")
end
