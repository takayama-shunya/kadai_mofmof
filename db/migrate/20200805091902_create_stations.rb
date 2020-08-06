class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :name
      t.string :route_name
      t.integer :walking
      t.references :property

      t.timestamps
    end
  end
end
