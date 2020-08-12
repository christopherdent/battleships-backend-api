class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :country, :image, :fleet
  belongs_to :fleet, optional: true

end
