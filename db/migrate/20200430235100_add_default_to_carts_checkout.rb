class AddDefaultToCartsCheckout < ActiveRecord::Migration[6.0]
  def change
    change_column :carts, :checkout, :boolean, default: false
  end
end
