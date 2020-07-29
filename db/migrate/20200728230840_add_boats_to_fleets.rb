class AddBoatsToFleets < ActiveRecord::Migration[6.0]
  def change
      add_column :fleets, :ship_id, :integer
      add_foreign_key :fleets, :ships
  end
end
