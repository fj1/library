class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :last_name
      t.string :first_name
      t.integer :cd_id

      t.timestamps
    end
  end
end
