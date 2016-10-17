class ReviewSerializer < ActiveModel::Serializer
  binding.pry
  attributes :id, :rating
end
