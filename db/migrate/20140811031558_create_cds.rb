class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.string :title
      t.string :musician_last
      t.string :musician_first
      t.string :ensemble
      t.string :category
      t.string :comment
      t.boolean :on_loan
      t.boolean :listened
      t.boolean :is_digital
      t.boolean :is_owned

      t.timestamps
    end
  end
end
