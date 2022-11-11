require 'count_words'

RSpec.describe 'count_words method' do
  it 'returns 0 if empty string given' do
    result = count_words('')
    expect(result).to eq 0
  end

  it 'returns number of words in string' do
    result = count_words('This is a string with 7 words')
    expect(result).to eq 7
  end

  it 'returns 1 if 1 word given' do
    result = count_words('hello')
    expect(result).to eq 1
  end
end
