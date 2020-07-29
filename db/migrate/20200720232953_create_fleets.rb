class CreateFleets < ActiveRecord::Migration[6.0]
  def change
    create_table :fleets do |t|

      t.timestamps
    end
  end
end
