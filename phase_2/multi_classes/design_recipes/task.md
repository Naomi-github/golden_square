Task Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
so that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them

As a user
so that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

┌────────────────────────────┐
│ TaskList                   │
│                            │
│ - add(track)               │
│ - all                      │
│ - complete               │
└───────────┬────────────────┘
            │
            │ TodoList has zero or more TodoTasks
            ▼
┌─────────────────────────┐
│ Task                │
│                         │
│ - mark_compelte         │
│ - title
  - complete?
└─────────────────────────┘
Also design the interface of each class in more detail.

class TaslList
  def add(task) # task is an instance of Task
  end

  def all
  # returns a list of Task instance
  # but only non-complete ones
  end

  def completed
  # returns a list of Task instances
  # but only the complete ones
  end
end

class Task

  def initialize(title) # title is a  string
  end

  def title
    # returns the title as a string
  end

  def mark_compelte
  # marks the task as complete
  # returns nothing
  end

  def complete?
  # returns true if marked completed, otherwise false
end


3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# 1
task_list = TaskList.new
task_1 = Task.new("walk the cat")
task_list.add(task_1)
task_2 = Task.new("walk the dog")
task_list.add(task_2)
task_list.all # => [task_1, task_2]

# 2
task_list = TaskList.new
task_1 = Task.new("walk the cat")
task_list.add(task_1)
task_2 = Task.new("walk the dog")
task_list.add(task_2)
task_2.mark_complete
task_list.all # => [task_1]

# 3
task_list = TaskList.new
task_1 = Task.new("walk the cat")
task_list.add(task_1)
task_2 = Task.new("walk the dog")
task_list.add(task_2)
task_2.mark_complete
task_list.compete # => [task_2]





4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

TaskList
# 1
task_list = TaskList.new
task_list.all # => []

# 2
task_list = TaskList.new
task_list.complete # => []

# Task
# 1
task = Task.new("walk the dog")
task.title # => "walk the dog"

# 2
task = Task.new("walk the dog")
task.complete? # => false

# 3
task = Task.new("walk the dog")
task.mark_complete
task.complete? # => true


5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
