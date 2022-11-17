class Contacts
  def initialize(diary)
      # takes the entries from diary as an instacne of diary
      # phoneNumbers = []
      @diary = diary
      @phoneNumbers = []
  end

  def extractPhoneNumbers
    # searches through the array of diary entries and extracts the phone number strings
    word = ""
    check_numbers = ("1234567890")
    @diary.each do |entry|
      words = entry.split(" ")
      words.each do |a|
        word = a.split("")
        # p word
      end
      if (word.length == 11) && word.each { |char| char.include?(check_numbers)}
        @phoneNumbers << word.join("")
      end
    end
  end

  def phoneNumbers
    # returns the phone numbers in an array
    @phoneNumbers
  end
end   
