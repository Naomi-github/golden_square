class EntryByReadingSpeed
  def initialize(wpm, time, diary)
      @time = time
      @wpm = wpm
      @diary = diary

  end

  def selectEntry
    # Returns entry you can read based on time * wpm
    @diary
  end
end

