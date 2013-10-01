require 'library'

describe "Library" do 
	it 'should add book' do
		library = Library.new
		mysearch = "Grape"
		library.add_book( mysearch )
		result = library.search_by_title( mysearch )
		expect(result).to eq(["Grape"])
	end
end