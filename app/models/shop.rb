class Shop < ApplicationRecord
  belongs_to :manager, class_name: 'User', optional: true
<<<<<<< HEAD
  has_many :users, dependent: :destroy
=======
  has_many :carts, dependent: :destroy
>>>>>>> 0a727669348db4fe51862534a43e863de93707c2
  has_many :products, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
