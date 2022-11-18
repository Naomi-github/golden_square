Task Multi-Class Planned Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a customer
So that I can check if I want to order something
I would like to see a list of dishes with prices.

As a customer
So that I can order the meal I want
I would like to be able to select some number of several available dishes.

As a customer
So that I can verify that my order is correct
I would like to see an itemised receipt with a grand total.

2. Design the Class System
Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

miro board design - https://miro.com/app/board/uXjVPCWvRqI=/
Also design the interface of each class in more detail.

class Menu
  def initialize
    #@all_items = []
  end

  def menu_items
    #hash/ array of menu items
  end

  def print_menu
    # prints the hash / array of menu items
  end

  def selected_dishes(items, quantity)
    #stores the selected dishes
    # and the number required
  end

  def total_cost
    # sums the total amount of the items ordered
  end

  def receipt
    #prints the items ordered and the total cost
  end

end


3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# 1
menu = Menu.new
menu.menu_items
menu.print_menu
menu.selected_dishes("sandwhich", 1)
menu.selected_dishes("burger", 2)
menu.selected_dishes("chips", 3)
menu.total_cost
menu.receipt #=> ["1x sandwhich", "2x burger", "3x chips" "total: £30"]

# 2
menu = Menu.new
menu.menu_items
menu.print_menu
menu.selected_dishes("sandwhich", 1)
menu.selected_dishes("burger", 2)
menu.selected_dishes("chips", 3)
menu.total_cost #=> '£30'

# 3
menu = Menu.new
menu.menu_items
menu.print_menu
menu.selected_dishes("sandwhich", 1) #=> ["1x sandwhich"]

# 4
menu = Menu.new
menu.menu_items
menu.print_menu #=> [menu_items]


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

