class RemoveMusicianLastAndMusicianFirstAndEnsembleFromCd < ActiveRecord::Migration
  def change
    remove_column :cds, :musician_last, :string
    remove_column :cds, :musician_first, :string
    remove_column :cds, :ensemble, :string
  end
end
