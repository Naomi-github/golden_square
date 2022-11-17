{{PROBLEM}} Multi-Class Planned Design Recipe
1. Describe the Problem
As a user

So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

Miro board available here
https://miro.com/app/board/uXjVPDZhmVQ=/

Also design the interface of each class in more detail.

class Diary
    def initialize
        #create an array called list of entries where DiaryEntry's are stored
    end

    def add(entry)
        #Takes DiaryEntry as input and adds it to list of entries array
    end

    def readDiary
        #Returns list of entries array
    end
end

class DiaryEntry
    def initialize(entry)
        #Creates entry string to be stored
    end

    def showEntry
        #Returns entry string
    end
end

class EntryByReadingSpeed
    def initialize(wpm, time, diary)
        # @time available WPM
        # @wpm = wpm
        # @diary = diary
    end

    def selectEntry
        # Returns entry you can read based on time * wpm
    end
end

class Contacts
    def initialize(diary)
        # takes the entries from diary as an instacne of diary
        # phone_numbers = []
    end

    def extractPhoneNumbers
      # searches through the array of diary entries and extracts the phone number strings
    end

    def phoneNumbers
      # returns the phone numbers in an array
    end
end

class TaskList
  def initialize
  # creates an array for the list of tasks
  end

  def add(task)
    # takes task and adds to the list of tasks array
  end

  def listTasks
    # returns an array of the tasks
  end
end

class Task
  def intialize(taskEntry)
    #takes take_entry as a string
  end

  def showTask
    #returns task_entry as a string
  end
end
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE
# Integration tests

# 1
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one")
diary.add(diaryEntry)
diary.readDiary # => [diaryEntry]

# 2
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one")
diaryEntry2 = DiaryEntry.new("diary entry two")
diary.add(diaryEntry)
diary.add(diaryEntry2)
diary.readDiary # => [diaryEntry, diaryEntry2]

#3
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one")
diary.add(diaryEntry)
readEntry = EntryByReadingSpeed.new(1,3,diary)
readEntry.selectEntry # => "diary entry one"

#4
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one")
diaryEntry2 = DiaryEntry.new("diary entry two is slightly longer than diary entry one")
diary.add(diaryEntry)
diary.add(diaryEntry2)
readEntry = EntryByReadingSpeed.new(1,12,diary)
readEntry.selectEntry # => "diary entry two is slightly longer than diary entry one"

#5
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one 01236478913")
diary.add(diaryEntry)
myContacts = Contacts.new
myContacts.phoneNumbers # => ["01236478913"]

#6
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry one 01236478913")
diary.add(diaryEntry)
diaryEntry2 = DiaryEntry.new("diary entry two 01236475343")
diary.add(diaryEntry2)
myContacts = Contacts.new
myContacts.phoneNumbers # => ["01236478913", "01236475343"]

#7
diary = Diary.new
diaryEntry = DiaryEntry.new("diary entry 01")
diary.add(diaryEntry)
myContacts = Contacts.new(diary)
myContacts.phoneNumbers # => [] #Returns empty array as no phone numbers present

#8
myTasks = TaskList.new
myNewTask = Task.new("Test my code.")
myTasks.add(myNewTask)
myTasks.listTasks # => ["Test my code."]

#9
myTasks = TaskList.new
myNewTask = Task.new("Test my code.")
myTasks.add(myNewTask)
myNewTask2 = Task.new("Fix my broken code.")
myTasks.add(myNewTask2)
myTasks.listTasks # => ["Test my code.", "Fix my broken code."]

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# EXAMPLE

# Diary Entry
#1
myEntry = DiaryEntry.new("This is an entry.")
myEntry.showEntry  => "This is an entry."

# Task
#2

myTask = Task.new("This is a task.")
myTask.showTask # => "This is a task."
Encode each example as a test. You can add to the above list as you go.

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
