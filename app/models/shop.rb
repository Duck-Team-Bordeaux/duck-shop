class Shop < ApplicationRecord
  belongs_to :manager, class_name: 'User'
  has_many :users
end
