class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :favorite_shop, foreign_key: { to_table: :shops }
    add_reference :shops, :manager, foreign_key: { to_table: :users }
    add_reference :products, :shop, foreign_key: true
    add_reference :items, :product, foreign_key: true
    add_reference :carts, :item, foreign_key: true
    add_reference :carts, :shop, foreign_key: true
    add_reference :carts, :user, foreign_key: true
  end
end
