class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name
      t.integer :price
      t.text :address
      t.integer :constraction
      t.text :remark

      t.timestamps
    end
  end
end
