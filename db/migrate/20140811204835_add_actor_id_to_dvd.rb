class AddActorIdToDvd < ActiveRecord::Migration
  def change
    add_column :dvds, :actor_id, :integer
  end
end
