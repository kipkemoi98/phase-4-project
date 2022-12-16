class HubSerializer < ActiveModel::Serializer
  attributes :id ,:name,:image, :location, :website_url,:description, :founder
  has_many :reviews
end
