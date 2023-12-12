class IngredientsController < ApplicationController
  def show
    # @ingredient = Ingredient.find(params[:id])
    # @recipes = Recipe.all
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(recipe_id: @recipe)
  end
end
