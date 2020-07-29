class FleetSerializer < ActiveModel::Serializer
  attributes :id
  has_many :ships 
end
