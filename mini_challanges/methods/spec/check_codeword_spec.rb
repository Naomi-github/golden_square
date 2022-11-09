require 'check_codeword'

RSpec.describe 'check_codeword method' do
  it 'returns a wrong message if given the wrong codeword' do
    result = check_codeword('car')
    expect(result).to eq 'WRONG!'
  end
  it 'returns close message if first and last letters are h and e' do
    result = check_codeword('hope')
    expect(result).to eq 'Close, but nope'
  end
  it 'returns correct message if horse' do
    result = check_codeword('horse')
    expect(result).to eq 'Correct! Come in.'
  end
end
