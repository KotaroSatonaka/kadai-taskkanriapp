class AddTitleToTaskLists < ActiveRecord::Migration[5.0]
  def change
    add_column :task_lists, :title, :string
  end
end
