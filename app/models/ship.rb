require 'pry'

class Ship < ApplicationRecord
  belongs_to :fleet, optional: true

    validate do
      ship_count_valid? unless self.id == nil || self.fleet_id == 2
  end

  def points
    if self.kind == "Battleship"
      return rand(40..50) ##actually return a random number between 40 and 50 and so on for all below.  for now let's not worry about that.
    elsif self.kind == "Super Dreadnaught"
      return rand(55..65)
    elsif self.kind == "Carrier"
      return rand(50..60)
    elsif self.kind == "Destroyer"
      return rand(30..40)
    elsif self.kind == "Submarine"
      return rand(25..45)
    elsif self.kind == "Cruiser"
      return rand(15..30)
    end
  end


  private

  def ship_count_valid?
    if self  ##So rails doesn't throw a fit when i try to seed from scratch
      if self.fleet.ships.count >= 5
          self.errors.add(:fleet_max, "Admiral, Maximum Fleet Capacity Reached!")
      end
    else
        self.save
    end


  end
end
