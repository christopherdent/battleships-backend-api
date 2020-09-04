class AddShipsToFleet < ActiveRecord::Migration[6.0]

  def change
    add_reference :ships, :fleet, index: true, foreign_key: true
  end
  
end
