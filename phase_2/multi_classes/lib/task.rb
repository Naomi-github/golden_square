class Task
  def initialize(title) # title is a  string
    @title = title
    @complete = false
  end

  def title
    # returns the title as a string
    @title
  end

  def mark_complete
  # marks the task as complete
  # returns nothing
    @complete = true
  end

  def complete?
  # returns true if marked completed, otherwise false
    @complete
  end
end
