class AddEanToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :ean, :string
  end
end
