class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies, status: 200
  end

  def show
    @movie = Movie.find(params[:id])
    render json: @movie, status: 200
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      render json: @movie, status: 200
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :gross_income, :release_date, :mpaa_rating, :description)
  end
end
