class RemoveMusicianIdAndEnsembleIdFromCd < ActiveRecord::Migration
  def change
    remove_column :cds, :musician_id, :integer
    remove_column :cds, :ensemble_id, :integer
  end
end
