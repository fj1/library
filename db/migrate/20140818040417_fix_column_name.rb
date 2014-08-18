class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :musicians, :name, :full_name
  end
end
