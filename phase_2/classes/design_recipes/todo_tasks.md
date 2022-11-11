todo_tasks Class Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class TodoTracker
  def initialize(name) # name is a string
    # ...
  end

  def add(task) # task is a string representing a instruction
    # No return value
  end

  def list
    # returns a list of the tasks added as strings
    #except the completed ones
  end

  def complete(task)
    # returns nothing
    # fails if the task doesn't exist
  end
end


3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todo_list = todo_tasks.new
todo_list.list # => []

# 2
todo_list = todo_tasks.new
todo_list.add("wash the car")
todo_list.list  # => ["wash the car"]

# 3
todo_list = todo_tasks.new
todo_list.add("wash the car")
todo_list.add("wash the dog")
todo_list.list  # => ["wash the car", "wash the dog"]

# 3
todo_list = todo_tasks.new
todo_list.add("wash the car")
todo_list.add("wash the dog")
todo_list.complete("wash the dog")
todo_list.list  # => ["wash the dog"]

# 3
todo_list = todo_tasks.new
todo_list.add("wash the car")
todo_list.complete("wash the sheep")
todo_list.list  #  fails "no such task"
