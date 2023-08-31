class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shops
  belongs_to :favorite_shop, class_name: 'Shop', optional: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
