class BarSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :url,
  :average_rating
  # ,:reviews

  # the below uses the review serializer unlike line 6 which gives all the info
  has_many :reviews

  def url
    url_for(object)
  end
end

# can be made via `rails g serializer bar` or manually create the file and inherit from ActiveModel::Serializer
