class ReviewsController < ApplicationController
  def index
    @movie = Movie.find(params[:id])
    @reviews = @movie.reviews
    render json: @reviews, status: ok
  end
end
