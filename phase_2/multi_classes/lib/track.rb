class Track
  def initialize(title, artist) #title and artist are both strings
    @title = title
    @artist = artist
  end

  def format
    # returns a string of the form "TITLE by ARTIST"
    "#{title} by #{artist}"
  end

  def title
    @title
  end

  def artist
    @artist
  end
end
