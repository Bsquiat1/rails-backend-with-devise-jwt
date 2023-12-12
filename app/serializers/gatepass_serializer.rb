class GatepassSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :depot, :product_type, :quantity_leaving, :destination, :vehicle_details
end
