class LoadingDepotSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :contact
  has_many :products, dependent: :destroy
end
