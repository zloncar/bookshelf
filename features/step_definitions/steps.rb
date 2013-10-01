Given(/^an empty bookshelf$/) do
  create_bookshelf
# expect( @bookshelf.book_count ).to eq 0
end

When(/^I search for a book$/) do
  search_titles( 'Banana' )
end

Then(/^shows no results found$/) do
  expect( search_results ).to be_empty
end

Given(/^a bookshelf with one book$/) do
  create_bookshelf
  add_book("Ruby")
end

When(/^I search for a non existent book$/) do
  search_titles( 'ABC' )
end

