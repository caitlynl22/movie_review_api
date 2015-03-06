FactoryGirl.define do
  factory :review do
    sequence :user do |n|
      "user#{n}"
    end
    body Faker::Lorem.paragraphs(2)
    rating 1
    movie
  end
end
