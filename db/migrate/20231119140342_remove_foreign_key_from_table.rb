class RemoveForeignKeyFromTable < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key  :loading_depots, :companies
  end
end
