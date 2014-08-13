class CreateCdMusicians < ActiveRecord::Migration
  def change
    create_table :cd_musicians do |t|
      t.references :cd, index: true
      t.references :musician, index: true

      t.timestamps
    end
  end
end
