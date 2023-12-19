class CreateRecipeReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :recipe_reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :recipe, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
