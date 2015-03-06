require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'Reviews Requests' do
  before(:all) do
    DatabaseCleaner.clean
    @movies = FactoryGirl.create_list(:movie, 25)
    @reviews = FactoryGirl.create_list(:review, 15)
  end

  describe '#index' do
    it 'gets all the reviews for a movie' do
      get "/movies/#{@movies.first.id}/reviews"
      expect(response).to be_success
    end
  end

  describe '#create' do
    it 'should create a review on the movie and return that review' do
      post "/movies/#{@movies.first.id}/reviews",
        { review: {
          user: 'Bob Cat',
          body: 'Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor.',
          rating: 4
          } }.to_json,
        { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
        expect(response).to be_success
        expect(response.content_type).to be Mime::JSON
    end
  end
end
