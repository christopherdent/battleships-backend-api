class ShipSerializer < ActiveModel::Serializer
  attributes :id, :name, :kind, :country, :image, :fleet_id
  belongs_to :fleet, optional: true

end
