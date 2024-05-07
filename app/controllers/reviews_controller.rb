class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.review.build(review_params)
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
