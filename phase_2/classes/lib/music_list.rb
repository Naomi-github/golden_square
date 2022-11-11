class MusicList
  def initialize
    @tracks = []
  end

  def list
    fail 'No track given' if @tracks.empty?
    @tracks
  end

  def add(track)
    @tracks << track
  end
end
