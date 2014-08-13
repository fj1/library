class RemoveCdIdFromEnsemble < ActiveRecord::Migration
  def change
    remove_column :ensembles, :cd_id, :integer
  end
end
