Given(/^the library is empty$/) do
  library
end

When(/^I search for title '(\w+)'$/) do |search|
  search_by_title search
end

Then(/^I get no results$/) do
  expect(search_results).to eq([])
end

Given(/^the library contains a book called '(\w+)'$/) do |title|
  library << title
end

def library
  @library ||= []
end

def search_by_title(title)
  @search_results = @library.find_all { |n| n == title }
end

def search_results 
  @search_results
end