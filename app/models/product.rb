class Product < ApplicationRecord
  belongs_to :shop, optional: true
  belongs_to :category
  has_many :items

  include PgSearch::Model

  pg_search_scope :global_search,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
end
