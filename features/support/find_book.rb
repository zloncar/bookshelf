class Bookshelf

attr_accessor :books
  def initialize
    @books = []
  end

  def search(book)
    @books.find_all { |x| x.eql? book }
  end
end

