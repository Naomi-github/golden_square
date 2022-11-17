require 'diary'
require 'diaryEntry'
require 'entryByReadingSpeed'
require 'contacts'
require 'task'
require 'taskList'

RSpec.describe 'integration' do
  context 'creating entries and adding them to diary' do
    it 'return 1 instance of diary entry when given 1 string' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one")
      diary.add(diaryEntry)
      expect(diary.readDiary).to eq ["diary entry one"]
    end

    it 'returns all isntances of diary entry when given multiple' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one")
      diaryEntry2 = DiaryEntry.new("diary entry two")
      diary.add(diaryEntry)
      diary.add(diaryEntry2)
      expect(diary.readDiary).to eq ["diary entry one", "diary entry two"]
    end
  end

  context 'returns sutiable diary entry for the time given' do
    it 'returns the diary diary entry' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one")
      diary.add(diaryEntry)
    #   readEntry = EntryByReadingSpeed.new(1,3,diary)
      expect(diary.selectEntry(1,3)).to eq "diary entry one"
    end

    it 'returns the longest entry to fit the time given, with two entries' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one")
      diaryEntry2 = DiaryEntry.new("diary entry two is slightly longer than diary entry one")
      diary.add(diaryEntry)
      diary.add(diaryEntry2)
    #   readEntry = EntryByReadingSpeed.new(1,12,diary)
      expect(diary.selectEntry(15,1)).to eq "diary entry two is slightly longer than diary entry one"
    end
  end

  context 'returns a list of phone numbers in an array' do
    it 'returns a single phone number when given a single phone number' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one 01236478913")
      diary.add(diaryEntry)
      myContacts = Contacts.new(diary.readDiary)
      myContacts.extractPhoneNumbers
      expect(myContacts.phoneNumbers).to eq ["01236478913"]
    end

    it 'returns multiple phone numbers when given two' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry one 01236478913")
      diary.add(diaryEntry)
      diaryEntry2 = DiaryEntry.new("diary entry two 01236475343")
      diary.add(diaryEntry2)
      myContacts = Contacts.new(diary.readDiary)
      myContacts.extractPhoneNumbers
      expect(myContacts.phoneNumbers).to eq ["01236478913", "01236475343"]
    end

    it 'returns an empty array when no valid phone numbers given' do
      diary = Diary.new
      diaryEntry = DiaryEntry.new("diary entry 01")
      diary.add(diaryEntry)
      myContacts = Contacts.new(diary.readDiary)
      myContacts.extractPhoneNumbers
      expect(myContacts.phoneNumbers).to eq []
    end
  end

  context 'returns an array of the tasks' do
    it 'returns a single task when given a single task' do
      myTasks = TaskList.new
      myNewTask = Task.new("Test my code.")
      myTasks.add(myNewTask.showTask)
      expect(myTasks.listTasks ).to eq ["Test my code."]
    end

    it 'returns multiple tasks in the array when given two' do
      myTasks = TaskList.new
      myNewTask = Task.new("Test my code.")
      myTasks.add(myNewTask.showTask)
      myNewTask2 = Task.new("Fix my broken code.")
      myTasks.add(myNewTask2.showTask)
      expect(myTasks.listTasks).to eq ["Test my code.", "Fix my broken code."]
    end
  end
end
Footer
© 2022 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pri
