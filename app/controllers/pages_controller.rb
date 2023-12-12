class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def choices
    @recipes = Recipe.all
    @restaurants = Restaurant.all
  end

  def dashboard
    @user = current_user
    @favorite_recipes = current_user.favorite_recipes
  end
end
