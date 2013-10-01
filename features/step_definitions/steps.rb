Given(/^the library is empty$/) do
end

When(/^I search for title '(\w+)'$/) do |search|
  search_by_title search
end

Then(/^I get no results$/) do
  expect(search_results).to eq([])
end

Given(/^the library contains a book called '(\w+)'$/) do |title|
  add_book title
end

