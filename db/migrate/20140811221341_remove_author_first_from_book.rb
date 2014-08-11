class RemoveAuthorFirstFromBook < ActiveRecord::Migration
  def change
    remove_column :books, :author_first, :string
  end
end
