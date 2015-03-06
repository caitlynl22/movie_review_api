class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
    render json: @reviews, status: 200
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @movie.reviews << @review
    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def review_params
    params.require(:review).permit(:user, :body, :rating)
  end
end
