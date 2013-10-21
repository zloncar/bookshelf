class Library
  attr_reader :books
  def initialize
    @books = []
  end

  def add_book(title)
    @books << Book.new(title)
  end

  def search_by_title(title, ui)
    raise ArgumentError, "invalid search" if title.to_s.strip.length < 1
    results = @books.find_all { |n| n if n.title.downcase.match title.downcase }
    ui.display_search_results(results)
  end

  class Book < Struct.new(:title)
  end
end

require 'sinatra'
configure do 
  library = Library.new
  set :library, library
end

helpers do
  def library
    settings.library
  end

  def display_search_results(results)
    @results = results
  end
end

get '/' do
  erb :index
end

get '/search' do
  @results = library.search_by_title(params[:query], self)
  erb :search
end

get '/add' do
  erb :add
end

post '/add' do
  library.add_book params[:title]
  redirect '/'
end
