class CreateCdEnsembles < ActiveRecord::Migration
  def change
    create_table :cd_ensembles do |t|
      t.references :cd, index: true
      t.references :ensemble, index: true
      
      t.timestamps
    end
  end
end
