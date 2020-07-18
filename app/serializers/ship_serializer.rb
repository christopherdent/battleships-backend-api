class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :country, :image, :user_id
  belongs_to :user

end
