class RemoveAuthorLastFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :author_last, :string
  end
end
