require 'pry-byebug'
require 'rails_helper'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

describe 'reviews management' do
  before :each do
    DatabaseCleaner.clean
    @movies = FactoryGirl.create_list(:movie, 25)
    @reviews = FactoryGirl.create_list(:review, 15)
  end

  it "updates a review" do
    put "/admin/reviews/#{@reviews.first.id}",
    { review: {
      user: "Pikachu",
      body: "Pika Pika",
      rating: 3
      }
      }.to_json,
      { 'Accept' => Mime::JSON, 'Content-Type' => Mime::JSON.to_s }
      expect(response).to be_success
      expect(response.content_type).to be Mime::JSON
    end
end
