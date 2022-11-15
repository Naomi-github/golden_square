class TaskList
  def initialize
    @tasks = []
  end

  def add(task) # task is an instance of Task
    @tasks << task
  end

  def all
  # returns a list of Task instance
  # but only non-complete ones
    @tasks.reject do |task|
      task.complete?
    end
    # could also be written as
    # @tasks.reject(&:compelte?)
  end

  def complete
  # returns a list of Task instances
  # but only the complete ones
    @tasks.select do |task|
      task.complete?
    end
     # could also be written as
    # @tasks.select(&:compelte?)
  end
end
