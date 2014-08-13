class RemoveActorIdFromDvd < ActiveRecord::Migration
  def change
    remove_column :dvds, :actor_id, :integer
  end
end
