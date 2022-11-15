require 'todo'
require 'todo_list'


RSpec.describe 'integration' do
  context 'returns all non-done todos' do
    it 'returns a single non-done todo' do
      todo_list = TodoList.new
      todo = Todo.new("one")
      todo_list.add(todo.task)
      expect(todo_list.incomplete).to eq ["TODO: one"]
    end

    it 'returns 2 incomplete tasks' do
      todo_list = TodoList.new
      todo = Todo.new("one")
      todo_list.add(todo.task)
      todo1 = Todo.new("two")
      todo_list.add(todo1.task)
      expect(todo_list.incomplete).to eq ["TODO: one", "TODO: two"]
    end
  end

  context 'moves todo from incomplete to complete task' do
    it 'returns all compelted todos' do
      todo_list = TodoList.new
      todo = Todo.new("one")
      todo.mark_done!
      todo_list.add(todo.task)
      expect(todo_list.complete).to eq ["DONE: one"]
    end

    it 'returns all completed when give_up method called' do
      todo_list = TodoList.new
      todo = Todo.new("one")
      todo_list.add(todo.task)
      expect(todo_list.give_up!).to eq ["DONE: one"]
    end
  end
end




