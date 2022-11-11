odo_tasks Class Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class MusicList
  def initialize
    # ...
  end

  def add(track) # track is a string representing a song
    # No return value
  end

  def list
    # returns a list of the tracks added as strings and listend to
  end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
track_list = MusicList.new
track_list.list => []

# 2
track_list = MusicList.new
track_list.add("Track 1")
track_list.list => ["Track 1"]

# 3
track_list = MusicList.new
track_list.add("Track 1")
track_list.add("Track 2")
track_list.list => ["Track 1", "Track 2"]

# 4
track_list = MusicList.new
track_list.add("Track 1")
track_list.add("Track 2")
track_list.add("Track 3")
track_list.add("Track 4")
track_list.add("Track 5")
track_list.list => ["Track 1", "Track 2", "Track 3", "Track 4", "Track 5"]

# 5
track_list = MusicList.new
track_list.add(" ")
track_list.list => [""]


