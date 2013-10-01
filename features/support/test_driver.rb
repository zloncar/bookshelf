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


  class Bookshelf

    def search_titles( search_string )
      []
    end
  end

end

World( TestDriver )
