class AddColumnUnitToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column(:products, :unit, :string)
  end
end
