require 'diary'

RSpec.describe DiaryEntry do
  it 'calls the title' do
    diary_entry = DiaryEntry.new('my_title', 'my_contents')
    expect(diary_entry.title).to eq 'my_title'
    expect(diary_entry.contents).to eq 'my_contents'
  end
  it 'returns word count' do
    diary_entry = DiaryEntry.new('title', 'contents ' * 200)
    expect(diary_entry.count_words).to eq 200
  end
  it 'calculates wpm (200)' do
    diary_entry = DiaryEntry.new('title', 'contents ' * 200)
    expect(diary_entry.reading_time(200)).to eq 1
  end
  it 'returns the number of words that can be read in the given time' do
    diary_entry = DiaryEntry.new('title', 'contents ' * 200)
    chunk = diary_entry.reading_chunk(200, 1)
    expect(chunk).to eq 'contents ' * 200
  end
end
