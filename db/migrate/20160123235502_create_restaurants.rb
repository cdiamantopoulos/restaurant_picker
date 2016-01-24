class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :style
      t.integer :price

      t.timestamps null: false
    end
  end
end
