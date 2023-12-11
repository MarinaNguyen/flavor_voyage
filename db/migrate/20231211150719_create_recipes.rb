class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :time
      t.string :link
      t.string :address
      t.text :description
      t.float :longitude
      t.float :latitude
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
