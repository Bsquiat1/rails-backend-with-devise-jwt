class LoadingDepot < ApplicationRecord
  has_many :products
    belongs_to :mainline
end
