class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :recipe_reviews

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
