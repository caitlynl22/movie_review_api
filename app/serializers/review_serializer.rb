class ReviewSerializer < ActiveModel::Serializer
  attributes :user, :body, :rating, :id, :movie_id
end
