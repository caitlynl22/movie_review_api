FactoryGirl.define do
  factory :movie do
    sequence :title do |n|
      "title#{n}"
    end
    # title Faker::Lorem.word
    gross_income Faker::Number.number(10)
    release_date Faker::Date.backward(200)
    mpaa_rating 'PG'
    description Faker::Lorem.paragraph
  end
end
