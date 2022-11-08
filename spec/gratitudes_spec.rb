require 'gratitudes'

RSpec.describe Gratitudes do
  it 'intially return one gratitude' do
    gratitude = Gratitudes.new
    gratitude.add("yes")
    expect(gratitude.format).to eq "Be grateful for: yes"
  end
  it 'returns multiple gratitudes' do
    gratitude = Gratitudes.new
    gratitude.add("yes")
    gratitude.add("hi")
    gratitude.add("ok")
    expect(gratitude.format).to eq "Be grateful for: yes, hi, ok"
  end
end
