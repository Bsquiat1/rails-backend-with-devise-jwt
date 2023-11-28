class AddLoadingDepotIdToMainlines < ActiveRecord::Migration[7.0]
  def change
    add_reference :mainlines, :loading_depot, null: false, foreign_key: true
  end
end
