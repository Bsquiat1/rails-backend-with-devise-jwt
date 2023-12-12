class AddColumnsToGatepasses < ActiveRecord::Migration[7.0]
  def change
    add_column :gatepasses, :depot, :string
    add_column :gatepasses, :product_type, :string
    add_column :gatepasses, :quantity_leaving, :integer
    add_column :gatepasses, :destination, :string
    add_column :gatepasses, :vehicle_details, :string
  end
end
