class Library

  def initialize
    @books = []
  end

  def add_book(title)
    @books << title
  end

  def search_by_title(title)
     @books.find_all { |n| n == title }
  end

end
