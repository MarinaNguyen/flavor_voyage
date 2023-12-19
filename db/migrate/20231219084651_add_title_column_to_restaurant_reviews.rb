class AddTitleColumnToRestaurantReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurant_reviews, :title, :string
  end
end
