class RecipesController < ApplicationController
  def index
    @recipes_per_country = Recipe.all.where(country: params[:country]&.downcase)
    @recipes_name = Recipe.all.where(country: params[:country]&.downcase).flat_map(&:name)
    if params[:query].present?
      sql_subquery = <<~SQL
        recipes.name @@ :query
      SQL
      @recipes_per_country = @recipes_per_country.all.where(sql_subquery, query: params[:query])
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
    @recipe_review = RecipeReview.new
    @recipe_reviews = @recipe.recipe_reviews
    params[:country] = @recipe.country.capitalize
  end
end
