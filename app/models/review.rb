class Review < ActiveRecord::Base
  belongs_to :bar

  validates :bar, presence: true
  validates :rating, presence: true
end
