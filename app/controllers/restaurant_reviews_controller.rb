class RestaurantReviewsController < ApplicationController

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_review = RestaurantReview.new(restaurant_review_params)
    @restaurant_review.restaurant = @restaurant
    @restaurant_review.user = current_user
    if @restaurant_review.save!
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/:id", status: :unprocessable_entity
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @restaurant_review = RestaurantReview.find(params[:id])
    @restaurant_review.destroy!
    redirect_to restaurant_path(@restaurant), status: :see_other
  end

  private

  def restaurant_review_params
    params.require(:restaurant_review).permit(:title, :comment)
  end
end
