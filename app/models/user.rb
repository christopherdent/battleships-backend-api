class User < ApplicationRecord
  has_many :ships


  def fleet
    fleet = []
    fleet << ship 
    return fleet
  end

end
