class ChangeTypeValueShoppingCarts < ActiveRecord::Migration[5.2]
  def change
  	change_column :shopping_carts, :status, :string, :default => 0
  end
end
