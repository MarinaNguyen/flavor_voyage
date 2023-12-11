class Country < ApplicationRecord
  has_many :restaurants
  has_many :recipes
end
