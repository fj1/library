class CreateDvds < ActiveRecord::Migration
  def change
    create_table :dvds do |t|
      t.string :title
      t.string :actor_last
      t.string :actor_first
      t.string :category
      t.string :comment
      t.boolean :on_loan
      t.boolean :viewed
      t.boolean :is_digital
      t.boolean :is_owned

      t.timestamps
    end
  end
end
