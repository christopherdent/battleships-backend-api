require 'pry'

class Ship < ApplicationRecord
  belongs_to :fleet, optional: true
  validate do
    ship_count_valid? unless self.id == nil
  end


  fleet = []

  def points  ##can we make these differ based on the enemy?  future problem!
    if self.kind == "Battleship"
      return 40 ##actually return a random number between 40 and 50.
    elsif self.kind == "Super Dreadnaught"
      return 65 ##rando between 55 and 65
    elsif self.kind == "Carrier"
      return 60
    elsif self.kind == "Destroyer"
      return 20
    elsif self.kind == "Submarine"
      return 30
    elsif self.kind == "Cruiser"
      return 30
    end
  end


  private

  def ship_count_valid?
    if self  ##just so rails doesn't throw a fit when i try to seed from scratch
      self.fleet_id = 1
      if self.fleet.ships.count >= 4
          self.errors.add(:team_max, "Maximum Fleet Capacity Reached!")
      end
    else
      self.save  #saves with new fleet id ... .
  end
end
end
