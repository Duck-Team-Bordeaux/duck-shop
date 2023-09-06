class Cart < ApplicationRecord
  enum progress: { created: 1, shopping: 2, payment: 3, paid: 4 }
  belongs_to :user
  belongs_to :shop
  has_many :items, dependent: :destroy
end
