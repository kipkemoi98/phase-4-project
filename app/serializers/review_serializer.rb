class ReviewSerializer < ActiveModel::Serializer
  attributes :id , :user_id , :hub_id , :comment

end
