require 'punctuation'

RSpec.describe 'punctuation method' do
  context 'no string given' do
    it 'fails' do
      result = punctuation(' ')
      expect(result).to eq false
    end
  end

  context 'correct punctuation in string given' do
    it 'correct punctuation, with full stop' do
      result = punctuation('This has correct punctuation.')
      expect(result).to eq true
    end

    it 'correct punctuation in string given, with exclamation mark' do
      result = punctuation('This has correct punctuation!')
      expect(result).to eq true
    end
  end

  context 'incorrect punctuation in string given' do
    it 'Incorrect punctuation, no capital on first letter' do
      result = punctuation("this doesn't have correct punctuation.")
      expect(result).to eq false
    end
  end
end
