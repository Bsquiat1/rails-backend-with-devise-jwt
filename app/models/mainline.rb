class Mainline < ApplicationRecord
  has_many :products
  has_many :loading_depots
end
