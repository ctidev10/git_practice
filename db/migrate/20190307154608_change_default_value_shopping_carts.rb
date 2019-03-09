class ChangeDefaultValueShoppingCarts < ActiveRecord::Migration[5.2]
  def change
  	change_column :shopping_carts, :status, :string, :default => 'created'
  end
end
