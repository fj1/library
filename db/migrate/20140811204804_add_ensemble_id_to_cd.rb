class AddEnsembleIdToCd < ActiveRecord::Migration
  def change
    add_column :cds, :ensemble_id, :integer
  end
end
