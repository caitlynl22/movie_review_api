class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :gross_income, :release_date, :mpaa_rating, :description
  has_many :reviews
end
