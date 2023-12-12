class RemoveTableCountry < ActiveRecord::Migration[7.1]
  def change
    remove_reference :recipes, :country
    remove_reference :restaurants, :country
    drop_table :countries
    add_column :recipes, :country, :string
    add_column :restaurants, :country, :string
  end
end
