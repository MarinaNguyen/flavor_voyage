class CreateRestaurantReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurant_reviews do |t|
      t.string :comment
      t.integer :rating
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
