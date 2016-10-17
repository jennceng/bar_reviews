class BarSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :url,
  :average_rating,
  :editable
  # ,:reviews

  # the below uses the review serializer unlike line 6 which gives all the info
  has_many :reviews
  # embed :ids, include: true

  def url
    url_for(object)
  end

  def editable
    scope.admin?
    # || object.creator?(scope)
  end
end

# can be made via `rails g serializer bar` or manually create the file and inherit from ActiveModel::Serializer
