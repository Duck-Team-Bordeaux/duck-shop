class Shop < ApplicationRecord
  belongs_to :manager, class_name: 'User', optional: true
  has_many :users, dependent: :destroy
  has_many :products, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
