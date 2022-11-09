require 'gratitudes'

RSpec.describe Gratitudes do
    it 'initially return one gratitude' do
        gratitude = Gratitudes.new
        gratitude.add("my dog")
        expect(gratitude.format).to eq "Be grateful for: my dog"
    end

    it 'returns multiple gratitudes' do
        gratitude = Gratitudes.new
        gratitude.add("my dog")
        gratitude.add("my cat")
        gratitude.add("rain")
        expect(gratitude.format).to eq "Be grateful for: my dog, my cat, rain"
    end
end
