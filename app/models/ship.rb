class Ship < ApplicationRecord

  belongs_to :fleet, optional: true

  # validate do
  #   ship_count_valid?
  # end


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

  # def ship_count_valid?
  #   if self.user.ships.count >= 5
  #     self.errors.add(:ship_max, "Maximum Fleet Capacity Reached!")
  #
  #   end
  # end
end
