class RemoveAuthorLastFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :column, :string
  end
end
