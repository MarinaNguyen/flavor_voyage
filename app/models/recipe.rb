class Recipe < ApplicationRecord
  belongs_to :country
  has_many :ingredients
end
