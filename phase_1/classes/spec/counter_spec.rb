require 'counter'

RSpec.describe Counter do
  it 'reports a count of zero' do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end
  it 'reports a count of added values with one addition' do
    counter = Counter.new
    counter.add(7)
    expect(counter.report).to eq "Counted to 7 so far."
  end
  it 'reports a count of all added values' do
    counter = Counter.new
    counter.add(7)
    counter.add(3)
    counter.add(5)
    expect(counter.report).to eq "Counted to 15 so far."
  end
  it 'reports a count of minus numbers added ' do
    counter = Counter.new
    counter.add(-7)
    expect(counter.report).to eq "Counted to -7 so far."
  end
  it 'reports a count of all minus values added' do
    counter = Counter.new
    counter.add(-7)
    counter.add(-5)
    counter.add(-3)
    expect(counter.report).to eq "Counted to -15 so far."
  end
end





