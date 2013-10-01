module TestDriver

  def create_bookshelf
    @bookshelf = Bookshelf.new
  end

  def search_titles( search_string )
    @search_results = @bookshelf.search_titles( search_string )
  end

  def search_results
    @search_results
  end

  def add_book(book)
    @bookshelf.books << book
  end

  class Bookshelf

    attr_accessor :books

    def initialize
      @books = []
    end

    def book_count
      0
    end

    def search_titles( search_string )
      @books.find_all { |x| x.eql? search_string }
    end
  end

end

World( TestDriver )
