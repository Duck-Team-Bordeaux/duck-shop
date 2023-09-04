class AddReferencesToItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :items, :cart, foreign_key: true
    remove_reference :carts, :item, foreign_key: true
  end
end
