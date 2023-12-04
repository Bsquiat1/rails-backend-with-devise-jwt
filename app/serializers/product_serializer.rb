class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity
  belongs_to :loading_depot, dependent: :destroy
 
end
