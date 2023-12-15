class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def choices
    country = params[:country].downcase
    @recipes = Recipe.where(country:)
    @restaurants = Restaurant.where(country:)
  end

  def dashboard
    @user = current_user
    @favorite_recipes = current_user.favorite_recipes
  end
end
