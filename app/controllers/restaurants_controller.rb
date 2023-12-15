class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {restaurant: restaurant})
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @marker = {
      lat: @restaurant.latitude,
      lng: @restaurant.longitude,
      info_window_html: render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
    }
    #@marker = {lat: @restaurant.latitude, lng: @restaurant.longitude}
  end
end
