require 'reading_time'

RSpec.describe 'calculate_reading_time method' do
  it 'returns zero if string empty' do
    result = calculate_reading_time('')
    expect(result).to eq 0
  end

  it 'returns 1 for one word' do
    result = calculate_reading_time('word')
    expect(result).to eq 1
  end

  it 'returns 1 if string is 200 words' do
    result = calculate_reading_time('one ' * 200)
    expect(result).to eq 1
  end

  it 'returns 1 if string is 300 words' do
    result = calculate_reading_time('one ' * 300)
    expect(result).to eq 2
  end

  it 'returns 1 if string is 400 words' do
    result = calculate_reading_time('one ' * 400)
    expect(result).to eq 2
  end

  it 'returns 1 if string is 5,000 words' do
    result = calculate_reading_time('one ' * 5000)
    expect(result).to eq 25
  end
end
