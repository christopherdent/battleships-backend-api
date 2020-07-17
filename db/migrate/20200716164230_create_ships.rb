class CreateShips < ActiveRecord::Migration[6.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :kind
      t.string :country
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
