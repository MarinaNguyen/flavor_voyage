class AddTitleColumnToRecipeReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :recipe_reviews, :title, :string
  end
end
