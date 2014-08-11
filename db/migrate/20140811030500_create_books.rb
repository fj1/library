class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author_last
      t.string :author_first
      t.string :category
      t.string :comment
      t.boolean :on_loan
      t.boolean :read
      t.boolean :is_digital
      t.boolean :is_owned

      t.timestamps
    end
  end
end
