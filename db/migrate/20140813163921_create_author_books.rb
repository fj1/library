class CreateAuthorBooks < ActiveRecord::Migration
  def change
    create_table :author_books do |t|
      t.references :book, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
