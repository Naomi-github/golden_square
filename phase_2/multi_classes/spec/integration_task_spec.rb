require 'task_list'
require 'task'

RSpec.describe 'integration' do
  it 'adds tasks and lists them out' do
    task_list = TaskList.new
    task_1 = Task.new("walk the cat")
    task_list.add(task_1)
    task_2 = Task.new("walk the dog")
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  context 'when we mark a task as complete' do
      it 'does not show up in the main task list' do
        task_list = TaskList.new
        task_1 = Task.new("walk the cat")
        task_list.add(task_1)
        task_2 = Task.new("walk the dog")
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.all ).to eq [task_1]
      end

      it 'shows up in the completed task list' do
        task_list = TaskList.new
        task_1 = Task.new("walk the cat")
        task_2 = Task.new("walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.complete).to eq [task_2]
      end
  end
end
