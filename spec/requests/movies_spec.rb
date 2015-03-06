require 'pry-byebug'
require 'rails_helper'

describe 'GET Requests' do
  before(:all) do
    Movie.destroy_all
    @movies = FactoryGirl.create_list(:movie, 25)
  end
  describe '#index' do
    it 'gets all the movies' do
      get '/movies'
      expect(response).to be_success
      json = JSON.parse(response.body)
      expect(json.length).to eq 25
    end
  end

  describe '#show' do
    it 'should retrieve a single movie by id and return json' do
      @movie = @movies.first
      get "/movies/#{@movie.id}"
      expect(response).to be_success
      movie = JSON.parse(response.body)
      expect(movie['title']).to eq @movie.title
    end
  end
end