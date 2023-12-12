class FavoriteRecipesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dashboard

  def index
    @favorite_recipes = current_user.favorite_recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def add
    @recipe = Recipe.find(params[:recipe_id])
    @favorite_recipe = FavoriteRecipe.new(recipe: @recipe, user: current_user)
    if @favorite_recipe.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @favorite_recipe = FavoriteRecipe.find(params[:id])
    @favorite_recipe.destroy
    redirect_to dashboard_path
  end

  private

  def favorite_recipes_params
    params.require(:favorite_recipe).permit(:recipe_id)
  end

  def set_dashboard
    @dashboard = Dashboard.new(current_user)
  end
end
