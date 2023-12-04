class AddMainlineReferenceToLoadingDepots < ActiveRecord::Migration[7.0]
  def change
    add_reference :loading_depots, :mainline, null: false, foreign_key: true
  end
end
