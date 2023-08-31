class RemoveCategoryFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :category

    add_reference :products, :category, foreign_key: true
  end
end
