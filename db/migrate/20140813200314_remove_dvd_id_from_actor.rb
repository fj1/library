class RemoveDvdIdFromActor < ActiveRecord::Migration
  def change
    remove_column :actors, :dvd_id, :integer
  end
end
