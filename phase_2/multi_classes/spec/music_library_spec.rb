#tests that are not testing both the classes but only the ones for music_library
require 'music_library'

RSpec.describe MusicLibrary do
  context 'intially' do
    it 'is empty' do
      music_library = MusicLibrary.new
      expect(music_library.all).to eq []
    end

    it 'responds to searches with an empty list' do
      music_library = MusicLibrary.new
      expect(music_library.search_by_title("fred")).to eq []
    end
  end
end
