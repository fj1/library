class CreateActorDvds < ActiveRecord::Migration
  def change
    create_table :actor_dvds do |t|
      t.references :actor, index: true
      t.references :dvd, index: true

      t.timestamps
    end
  end
end
