class AddReferencesToTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :shop, foreign_key: true
    add_reference :shops, :user, foreign_key: true
    add_reference :products, :shop, foreign_key: true
    add_reference :items, :product, foreign_key: true
    add_reference :carts, :item, foreign_key: true
    add_reference :carts, :shop, foreign_key: true
    add_reference :carts, :user, foreign_key: true
  end
end
