class LoadingDepot < ApplicationRecord
  has_many :products, dependent: :destroy
    # belongs_to :mainline
end
