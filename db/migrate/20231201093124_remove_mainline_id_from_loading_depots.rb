class RemoveMainlineIdFromLoadingDepots < ActiveRecord::Migration[7.0]
  def change
    remove_column :loading_depots, :mainline_id
  end
end
