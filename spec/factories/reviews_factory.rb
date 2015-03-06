FactoryGirl.define do
  factory :review do
    user Faker::Name.name
    body Faker::Lorem.paragraphs(2)
    rating 1
    movie
  end
end
