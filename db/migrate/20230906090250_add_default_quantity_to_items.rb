class AddDefaultQuantityToItems < ActiveRecord::Migration[7.0]
  def change
    change_column :items, :quantity, :integer, default: 0
  end
end
