class RecipeReviewsController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_review = RecipeReview.new(recipe_review_params)
    @recipe_review.recipe = @recipe
    @recipe_review.user = current_user
    if @recipe_review.save!
      redirect_to recipe_path(@recipe)
    else
      render "recipes/:id", status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_review = RecipeReview.find(params[:id])
    @recipe_review.destroy
    redirect_to recipe_path(@recipe), status: :see_other
  end

  private

  def recipe_review_params
    params.require(:recipe_review).permit(:title, :comment)
  end
end
