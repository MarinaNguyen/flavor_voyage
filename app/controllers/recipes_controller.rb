class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
      if params[:query].present?
      sql_subquery = <<~SQL
        recipes.name @@ :query
      SQL
      @recipes = @recipes.where(sql_subquery, query: params[:query])
      end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @ingredients = @recipe.ingredients
  end
end
