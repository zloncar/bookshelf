require 'library'

describe "Library" do 
  subject { Library.new }
  it 'should add book' do
    mysearch = "Grape"
    subject.add_book( mysearch )
    result = subject.search_by_title( mysearch )
    expect(result).to eq(["Grape"])
  end

  it 'should error when searching with empty string' do
    mysearch = ""
    expect{subject.search_by_title(mysearch)}.to raise_error(ArgumentError)
  end

  it 'should error when searching with whitespace only string' do
    mysearch = "  "
    expect{subject.search_by_title(mysearch)}.to raise_error(ArgumentError)
  end

  it 'should error when searching with nil' do
    expect{subject.search_by_title(nil)}.to raise_error(ArgumentError)
  end

end