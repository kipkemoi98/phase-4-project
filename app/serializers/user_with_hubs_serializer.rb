class UserWithHubsSerializer < ActiveModel::Serializer
  attributes :id ,:name, :location, :website_url,:description, :founder
  has_many :hubs
end
