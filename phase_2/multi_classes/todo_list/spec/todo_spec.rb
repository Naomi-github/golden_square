require 'todo'

RSpec.describe 'Todo' do
  it 'returns task ad todo: string' do
    todo = Todo.new("one")
    expect(todo.task).to eq "TODO: one"
  end

  context 'returns true or false depending on if the todo has been compelted or not' do
    it 'returns false' do
      todo = Todo.new("one")
      expect(todo.done?).to eq false
    end

    it 'returns true' do
      todo = Todo.new("one")
      todo.mark_done!
      expect(todo.done?).to eq true
    end
  end
end

