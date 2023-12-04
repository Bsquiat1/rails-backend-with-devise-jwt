class RemoveCompanyIdFromLoadingDepots < ActiveRecord::Migration[7.0]
  def change
    remove_column :loading_depots, :company_id
  end
end
