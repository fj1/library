class RemoveActorLastAndActorFirstFromDvd < ActiveRecord::Migration
  def change
    remove_column :dvds, :actor_last, :string
    remove_column :dvds, :actor_first, :string
  end
end
