class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :items
end
