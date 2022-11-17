require 'diaryEntry'

RSpec.describe DiaryEntry do
  it 'returns a single entry when a single one given' do
    myEntry = DiaryEntry.new("This is an entry.")
    expect(myEntry.showEntry).to eq "This is an entry."
  end
end
