class CreateCartPlants < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_plants do |t|
      t.integer :cart_id
      t.integer :plant_id
    end
  end
end
