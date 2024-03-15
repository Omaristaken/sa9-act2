require "ToDoList-Class"

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      todo_list = TodoList.new
      todo = "Go to school"
      todo_list.add(todo)
      expect(todo_list.todos).not_to be_empty
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      todo_list = TodoList.new
      todo = "Go to school"
      todo_list.add(todo)
      todo_list.remove(todo)
      expect(todo_list.todos).to be_empty
    end
  end

  describe "#todos" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo1 = "Go to school"
      todo2 = "Do laundry"
      todo_list.add(todo1)
      todo_list.add(todo2)
      expect(todo_list.todos).to eq([todo1, todo2])
    end
  end
end
