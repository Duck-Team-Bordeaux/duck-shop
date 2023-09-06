class AddColumnDuckcoinsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :duckcoins, :float
  end
end
