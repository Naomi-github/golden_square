class TodoList
  def initialize
    @incomplete = []
    @completed = []

  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    if todo.include?("TODO:")
      @incomplete << todo
    elsif todo.include?("DONE:")
      @completed << todo
    else
      @incomplete << "TODO: #{todo}"
    end
  end

  def incomplete
    # Returns all non-done todos
    @incomplete
  end

  def complete
    # Returns all complete todos
    @completed
  end

  def give_up!
    # Marks all todos as complete
    @incomplete.each do |task|
      task.gsub!("TODO:", "DONE:")
      @completed << task
    end
  end
end
