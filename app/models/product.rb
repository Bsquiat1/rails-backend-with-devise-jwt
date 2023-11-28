class Product < ApplicationRecord
  belongs_to :loading_depot
  belongs_to :mainline
end
