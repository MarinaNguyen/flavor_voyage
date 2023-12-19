class RestaurantsController < ApplicationController
  def index
    @restaurants_per_country = Restaurant.all.where(country: params[:country]&.downcase)
    @restaurants_name = Restaurant.all.where(country: params[:country]&.downcase).flat_map(&:name)
    if params[:query].present?
    sql_subquery = <<~SQL
      restaurants.name @@ :query
    SQL
    @restaurants_per_country = @restaurants_per_country.all.where(sql_subquery, query: params[:query])
    end
    @markers = @restaurants_per_country.geocoded.map do |restaurant|
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
    params[:country] = @restaurant.country.capitalize
  end
end
