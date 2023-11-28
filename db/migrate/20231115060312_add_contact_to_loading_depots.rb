class AddContactToLoadingDepots < ActiveRecord::Migration[7.0]
  def change
    add_column :loading_depots, :contact, :string
  end
end
