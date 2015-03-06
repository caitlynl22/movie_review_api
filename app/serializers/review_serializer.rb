class ReviewSerializer < ActiveModel::Serializer
  attributes :user, :body, :rating, :id
end
