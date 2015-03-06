class Movie < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :title, :presence => true, :uniqueness => true
end
