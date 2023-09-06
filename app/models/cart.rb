class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_many :items, dependent: :destroy
  def total_items

  end
end
