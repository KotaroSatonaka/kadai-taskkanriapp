class RenameResetColumnToTaskList < ActiveRecord::Migration[5.0]
  def change
    rename_column :tasklist, :reset, :tasks
  end
end
