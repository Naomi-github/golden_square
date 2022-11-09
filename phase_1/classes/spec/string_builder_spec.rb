require 'string_builder'

RSpec.describe StringBuilder do
  context "given one addition of a string" do
  it 'initially returns an empty string as output' do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end

  it 'initially returns a size of zero' do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end
end

  context "given many additions of a string" do
    it "outputs the strings" do
      string_builder = StringBuilder.new
      string_builder.add('hello')
      string_builder.add('world')
      string_builder.add('!')
      expect(string_builder.output).to eq 'helloworld!'
    end

    it "has a size of that string's length" do
      string_builder = StringBuilder.new
      string_builder.add('hello')
      string_builder.add('world')
      string_builder.add('!')
      expect(string_builder.size).to eq 11
    end
  end
end
