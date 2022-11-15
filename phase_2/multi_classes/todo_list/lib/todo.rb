class Todo
  def initialize(task) # task is a string
    # ...
    @tasks = "TODO: #{task}"
  end

  def task
    # Returns the task as a string
    @tasks
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @tasks.gsub!("TODO:", "DONE:")
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    if @tasks.include?("TODO:")
      false
    else
      true
    end
  end
end
