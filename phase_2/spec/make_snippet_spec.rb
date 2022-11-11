require 'make_snippet'

RSpec.describe 'make_snippet method' do
  it 'returns the string if less than 5 given' do
    result = make_snippet('hello')
    expect(result).to eq 'hello'
  end

  it 'returns the first 5 words if more than 5 given' do
    result = make_snippet('This is more than 5 words!')
    expect(result).to eq 'This is more than 5...'
  end

  it 'returns the first 5 words if more than 1 sentence given' do
    result = make_snippet('This is sentence one. This is sentence two.')
    expect(result).to eq 'This is sentence one. This...'
  end

  it 'returns an empty string if the given string is empty' do
    result = make_snippet('')
    expect(result).to eq ''
  end
end
