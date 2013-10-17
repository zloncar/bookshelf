require 'library'

module DomainDriver

  def library
    @library ||= Library.new
  end

  def search_by_title(title)
    @search_results = library.search_by_title title
  end

  def search_results 
    @search_results
  end

  def add_book(title)
    library.add_book title
  end

end

module WebUIDriver

  def library
    @library ||= Library.new
  end

  def search_by_title(title)
    visit '/'
    #save_and_open_page
    fill_in 'query', with: title
    click_button 'Search'
  end

  def add_book(book)
    Capybara.app.set :library, library
    visit '/add'
    fill_in 'title', with: book
    click_button 'Save'
  end
  
  def search_results
    all('.result').map(&:text)
  end
end

if ENV['DOMAIN']
  World(DomainDriver)
else
  require 'capybara/cucumber'

  Capybara.app = Sinatra::Application
  Capybara.app.set :environment, :test
  Capybara.save_and_open_page_path = File.expand_path("./tmp/capybara")
  World(WebUIDriver)
end
