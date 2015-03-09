class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render json: @movies, status: 200
  end

  def show
    title = params[:id]
    @movie = Omdb::Api.new.search(title)
    render json: @movie, status: 200
  end

  def update
    title = params[:id]
    @movie = Omdb::Api.new.search(title)
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
