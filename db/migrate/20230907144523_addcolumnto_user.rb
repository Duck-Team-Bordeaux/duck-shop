class AddcolumntoUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :url_photo, :string
  end
end
