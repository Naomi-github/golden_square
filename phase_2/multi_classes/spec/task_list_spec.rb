require 'task_list'

RSpec.describe TaskList do
  context "intially" do
    it 'has an empty list of tasks' do
      task_list = TaskList.new
      expect(task_list.all).to eq []
      # can also be written as .to be_empty
    end

    it "has and empty list of compelte tasks" do
      task_list = TaskList.new
      expect(task_list.complete).to eq []
    end
  end
end
