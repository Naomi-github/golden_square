class Diary

  def initialize
      #create an array called list of entries where DiaryEntry's are stored
      @listOfEntries = []
  end

  def add(entry)
      #Takes DiaryEntry as input and adds it to list of entries array
      @listOfEntries.push(entry.showEntry)
  end

  def readDiary
      #Returns list of entries array
      @listOfEntries
  end

  def selectEntry(wpm,time)
    if @listOfEntries.reject {|entry| entry.split(' ').length < (wpm * time) }

    else @listOfEntries.accept {|entry| entry.countsplit(' ').length < (wpm * time) }

    end
    @listOfEntries.max
  end


end
