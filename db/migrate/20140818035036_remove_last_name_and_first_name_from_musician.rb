class RemoveLastNameAndFirstNameFromMusician < ActiveRecord::Migration
  def change
    remove_column :musicians, :last_name, :string
    remove_column :musicians, :first_name, :string
  end
end
