require 'task'

RSpec.describe Task do
  it 'returns a single task when given a single task entry' do
    myTask = Task.new("This is a task.")
    expect(myTask.showTask ).to eq "This is a task."
  end
end
