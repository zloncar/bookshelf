module UIDriver
  
  def bookshelf
    @bookshelf ||= Bookshelf.new
  end

  def add_book(book)
    bookshelf.books << book
  end
end
World(UIDriver)