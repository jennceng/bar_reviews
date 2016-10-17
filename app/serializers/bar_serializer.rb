class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :average_rating, :reviews 

  def url
    url_for(object)
  end
end
