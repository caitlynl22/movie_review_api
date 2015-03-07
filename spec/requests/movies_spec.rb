require 'pry-byebug'
require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'GET Requests' do
  before(:all) do
    DatabaseCleaner.clean
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

  describe 'PUT requests' do
    describe '#create' do
      it 'should create a new movie' do
        post '/movies',
        { movie: {
          title: "Sheep",
          gross_income: 500,
          release_date: '01/23/2011',
          mpaa_rating: 'R',
          description: "Three hours of sheep eating grass."
          }
        }.to_json,
        { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
        expect(response).to be_success
        expect(response.content_type).to be Mime::JSON
        movie = JSON.parse(response.body)
        expect(movie["title"]).to eq "Sheep"
      end
    end

    describe '#update' do
      it 'should update a single movie' do
        @movie = @movies.first
        put "/movies/#{@movie.id}",
        { movie: {
          title: "The Avengers",
          gross_income: 0,
          release_date: '05/04/2012',
          mpaa_rating: 'PG-13',
          description: "A movie about superheroes."
          }
        }.to_json,
        { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }

        expect(response).to be_success
        expect(response.content_type).to be Mime::JSON

        movie = JSON.parse(response.body)
        expect(movie['title']).to eq "The Avengers"
      end
    end
  end
end


