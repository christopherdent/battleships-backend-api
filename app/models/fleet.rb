class Fleet < ApplicationRecord
  has_many :ships
  validate :fleet?


  def create

  end

private

  def fleet?
    if self.ships != []
      self.ships.count < 6
    end
  end



end


 # def validate_tags
 #   errors.add(:tags, "too much") if tags.size > 5
 # end
