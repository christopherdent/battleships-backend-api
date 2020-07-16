class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :class
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
