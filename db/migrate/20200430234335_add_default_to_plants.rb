class AddDefaultToPlants < ActiveRecord::Migration[6.0]
  def change
    change_column :plants, :available, :boolean, default: true
  end
end
