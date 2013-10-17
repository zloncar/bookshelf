class Library
  def initialize
    @books = []
  end

  def add_book(title)
    @books << title
  end

  def search_by_title(title)
    raise ArgumentError if title.to_s.strip.length < 1
    @books.find_all { |n| n if n.downcase.match title.downcase }
  end
end

require 'sinatra'
configure do 
  library = Library.new
  library.add_book "Hello, world!"
  set :library, library
end

get '/' do
  %{<html>
  <head></head>
  <body>
  <form action="/search">
    <input type="text" id="query" name="query" />
    <input type="submit" id="search" value="Search">
  </body>
  </html>}
end

get '/search' do
  @results = settings.library.search_by_title(params[:query])
  erb :search
end
