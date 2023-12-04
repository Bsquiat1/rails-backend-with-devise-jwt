class RemoveLoadingDepotIdFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :loading_depot_id, :integer
  end
end
