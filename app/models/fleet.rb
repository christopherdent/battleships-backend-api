class Fleet < ApplicationRecord
  has_many :ships


  def ship_count_valid?
    if self.ships.count >= 5
      self.errors.add(:ship_max, "Maximum Fleet Capacity Reached!")

    end
  end

end
