require 'greet'

RSpec.describe 'greet method' do
  it 'return string with inputted name' do
    result = greet('Naomi')
    expect(result).to eq 'Hello, Naomi!'
  end
end
