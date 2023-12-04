class RemoveLoadingDepotIdFromMainline < ActiveRecord::Migration[7.0]
  def change
    remove_column :mainlines, :loading_depot_id, :integer
  end
end
