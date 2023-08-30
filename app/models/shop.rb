class Shop < ApplicationRecord
  belongs_to :manager, class_name: 'User', optional: true
  has_many :users
  has_many :products, dependent: :destroy
end
