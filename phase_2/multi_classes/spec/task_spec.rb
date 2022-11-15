require 'task'

RSpec.describe Task do
  it 'constructs' do
    task = Task.new("walk the dog")
    expect(task.title).to eq "walk the dog"
  end

  it 'is intially not complete' do
    task = Task.new("walk the dog")
    expect(task.complete?).to eq false
    # can also be written as .to be_falsy
  end

  it 'can be marked complete' do
    task = Task.new("walk the dog")
    task.mark_complete
    expect(task.complete?).to eq true
    # can also be written as .to be_truthy
  end
end

