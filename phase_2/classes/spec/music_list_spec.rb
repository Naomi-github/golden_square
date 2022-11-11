require 'music_list'

RSpec.describe MusicList do
  context 'fails if no string given' do
  it 'returns fail' do
    track_list = MusicList.new
    expect{ track_list.list }.to raise_error "No track given"
  end
  end

  context 'return empty string if string is empty' do
    it 'returns empty array' do
      track_list = MusicList.new
      track_list.add(" ")
      expect(track_list.list).to eq [" "]
    end
  end

  context 'returns the track, if 1 track given' do
    it 'returns a single track' do
      track_list = MusicList.new
      track_list.add("Track 1")
      expect(track_list.list).to eq ["Track 1"]
    end
  end

  context 'if multiple tracks given, returns all the tracks' do
    it 'returns 2 tracks' do
      track_list = MusicList.new
      track_list.add("Track 1")
      track_list.add("Track 2")
      expect(track_list.list).to eq ["Track 1", "Track 2"]
    end

    it 'returns all tracks' do
      track_list = MusicList.new
      track_list.add("Track 1")
      track_list.add("Track 2")
      track_list.add("Track 3")
      track_list.add("Track 4")
      track_list.add("Track 5")
      expect(track_list.list).to eq ["Track 1", "Track 2", "Track 3", "Track 4", "Track 5"]
    end
  end
end





