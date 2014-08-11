class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :last_name
      t.string :first_name
      t.integer :dvd_id

      t.timestamps
    end
  end
end
