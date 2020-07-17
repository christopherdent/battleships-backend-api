class Ship < ApplicationRecord
  belongs_to :user, optional: true


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

end
