class DropCartPlants < ActiveRecord::Migration[6.0]
  def change
    drop_table :cart_plants
  end
end
