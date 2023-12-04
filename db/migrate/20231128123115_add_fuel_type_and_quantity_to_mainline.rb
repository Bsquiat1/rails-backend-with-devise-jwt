class AddFuelTypeAndQuantityToMainline < ActiveRecord::Migration[7.0]
  def change
    add_column :mainlines, :fuel_type, :string
    add_column :mainlines, :quantity, :decimal
  end
end
