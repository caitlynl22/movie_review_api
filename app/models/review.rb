class Review < ActiveRecord::Base
  belongs_to :movie
  validates :user, :uniqueness => { scope: :movie }
end
