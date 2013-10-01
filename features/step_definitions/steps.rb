#Given(/^an empty bookshelf$/) do
#  pending # express the regexp above with the code you wish you had
#end

#When(/^I search for a book$/) do
 # pending # express the regexp above with the code you wish you had
#end


Given(/^a bookshelf with one book$/) do
  add_book("Ruby")
end

When(/^I search for a non existent book$/) do
  @result = bookshelf.search("ABC")
end

Then(/^shows no results found$/) do
  expect(@result).to be_empty
end

module UIDriver
  
  def bookshelf
    @bookshelf ||= Bookshelf.new
  end

  def add_book(book)
    bookshelf.books << book
  end
end
World(UIDriver)