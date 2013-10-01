Given(/^the library is empty$/) do
  library
end

When(/^I search for title 'Banana'$/) do
  search_by_title "Banana"
end

Then(/^I get no results$/) do
  expect(search_results).to eq([])
end

Given(/^the library contains (\d+) book called 'Cucumber'$/) do |arg1|
  library << "Cucumber"
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