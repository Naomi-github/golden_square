require 'todo'

RSpec.describe 'todo method' do
  context 'returns false' do
    it 'returns blank string given, if no string given' do
      result = todo(' ')
      expect(result).to eq false
    end

    it 'returns false if todo not in string' do
      result = todo('make dinner')
      expect(result).to eq false
    end
  end
  context 'returns true' do
    it 'returns true, with TODO at the start of the string' do
      result = todo('TODO : feed the dog')
      expect(result).to eq true
    end

    it 'returns true, with lowercase todo at end of string' do
      result = todo('clean : todo')
      expect(result).to eq true
    end
  end
end
