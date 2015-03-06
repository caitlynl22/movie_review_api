class Admin::ReviewsController < ApplicationController

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render json: @review, status: :ok
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    head :no_content
  end

  private

  def review_params
    params.require(:review).permit(:user, :body, :rating)
  end
end
