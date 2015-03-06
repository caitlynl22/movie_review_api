class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
    render json: @reviews, status: 200
  end
end
