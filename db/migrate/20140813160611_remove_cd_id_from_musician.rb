class RemoveCdIdFromMusician < ActiveRecord::Migration
  def change
    remove_column :musicians, :cd_id, :integer
  end
end
