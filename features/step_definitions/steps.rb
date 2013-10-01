Given(/^an empty bookshelf$/) do
  create_bookshelf
end

Then(/^shows no results found$/) do
  expect( search_results ).to be_empty
end

Given(/^a bookshelf with one book$/) do
  create_bookshelf
  add_book("Ruby")
end

When(/^I search for a non existent book$/) do
  search_titles( 'Banana' )
end

When(/^I search for a book$/) do
  search_titles( 'Ruby' )
end

Then(/^shows the book$/) do
  expect( search_results ).to eq ["Ruby"]
end

Given(/^a bookshelf with a few books$/) do
  create_bookshelf
  add_book("Ruby")
  add_book("Perl")
  add_book("Java")
  add_book("C#")
end
