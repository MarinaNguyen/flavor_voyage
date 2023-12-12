# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'open-uri'
require 'json'

API_URL = "https://api.edamam.com/search?from=0&to=100&app_id=#{ENV['APP_ID']}&app_key=
#{ENV['APP_KEY']}&q=recipes"

Ingredient.destroy_all
Recipe.destroy_all

response = URI.open(API_URL).read
recipes_data = JSON.parse(response)
recipes_data['hits'].first(200).each do |hit|
  hit_recipe = hit['recipe']
  recipe = Recipe.create!(
    name: hit_recipe['label'],
    country: hit_recipe['cuisineType'].first
  )

  hit_recipe['ingredientLines'].each do |line|
    Ingredient.create!(
      name: line,
      recipe:
    )
  end
end

puts "#{Recipe.count} recipes created"
puts "#{Ingredient.count} ingredients created"
puts 'Recipes seeded successfully!'
