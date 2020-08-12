class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :kind
      t.string :country
      t.string :image
      end
  end
end
