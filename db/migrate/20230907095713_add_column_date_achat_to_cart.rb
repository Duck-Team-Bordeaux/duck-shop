class AddColumnDateAchatToCart < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :date_achat, :date
  end
end
