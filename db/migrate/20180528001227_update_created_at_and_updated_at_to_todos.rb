class UpdateCreatedAtAndUpdatedAtToTodos < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:todos, :created_at, false)
    change_column_null(:todos, :updated_at, false)
  end
end
