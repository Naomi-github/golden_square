require 'grammar'

RSpec.describe GrammarStats do
  context 'check' do

  it 'returns true when captial first letter and sentence ending punctuation.' do
    result = GrammarStats.new
    expect(result.check('This has correct punctuation.')).to eq true
  end

  it 'returns false when no captial first letter and no punctuation.' do
    result = GrammarStats.new
    expect(result.check('this has correct punctuation ')).to eq false
  end

  it 'returns false when captial first letter and no punctuation.' do
    result = GrammarStats.new
    expect(result.check('This has correct punctuation ')).to eq false
  end

  it 'returns false when no captial first letter and correct punctuation.' do
    result = GrammarStats.new
    expect(result.check('this has correct punctuation.')).to eq false
  end
end

  context 'percentage_good' do
    it 'returns 100 percentage of passed strings, all correct' do
      result = GrammarStats.new
      result.check('This one is right.')
      result.check('Is this correct?')
      result.check('This string passes!')
      expect(result.percentage_good).to eq 100
    end

    it 'returns 50(%) as half the string are incorrect' do
      result = GrammarStats.new
      result.check('This string is correct.')
      result.check('tHis string is incorrect,')
      expect(result.percentage_good).to eq 50
    end
  end
end






