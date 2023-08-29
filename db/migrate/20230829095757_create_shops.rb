class CreateShops < ActiveRecord::Migration[7.0]
  def change
    create_table :shops do |t|
      t.string :location
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
