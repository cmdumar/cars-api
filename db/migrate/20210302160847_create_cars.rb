class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :model
      t.integer :price
      t.integer :top_speed
      t.integer :range
      t.string :peak_power

      t.timestamps
    end
  end
end
