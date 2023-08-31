class ChangePriceColumnTypeIntToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column(:products, :price, :float)
  end
end
