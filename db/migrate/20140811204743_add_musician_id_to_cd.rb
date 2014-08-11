class AddMusicianIdToCd < ActiveRecord::Migration
  def change
    add_column :cds, :musician_id, :integer
  end
end
