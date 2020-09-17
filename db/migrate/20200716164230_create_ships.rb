class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.text :name
      t.text :kind
      t.text :country
      t.text :image
      # t.integer :fleet_id, foreign_key: true
      end
  end
end
