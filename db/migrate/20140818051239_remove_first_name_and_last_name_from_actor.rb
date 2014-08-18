class RemoveFirstNameAndLastNameFromActor < ActiveRecord::Migration
  def change
    remove_column :actors, :first_name, :string
    remove_column :actors, :last_name, :string
  end
end
