class Product < ApplicationRecord
  belongs_to :shop, optional: true

  include PgSearch::Model

  pg_search_scope :global_search,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }
end
