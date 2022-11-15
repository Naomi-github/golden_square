require 'todo_list'

RSpec.describe TodoList do
  context 'given only incomplete todos' do
    it 'returns an the todo' do
      todo = TodoList.new
      todo.add("one")
      expect(todo.incomplete).to eq ["TODO: one"]
    end

    it 'returns an empty co plete list' do
      todo = TodoList.new
      todo.add("one")
      expect(todo.complete).to eq []
    end
  end

  context 'when give_up method used' do
    it 'returns a fully compelted list' do
      todo = TodoList.new
      todo.add("one")
      todo.add("two")
      todo.add("three")
      expect(todo.give_up!).to eq ["DONE: one", "DONE: two", "DONE: three"]
    end
  end
end



