class TaskList
  def initialize
  # creates an array for the list of tasks
    @list = []
  end

  def add(task)
    # takes task and adds to the list of tasks array
    @list << task
  end

  def listTasks
    # returns an array of the tasks
    @list
  end
end
