class AddQuantityToMainlines < ActiveRecord::Migration[7.0]
  def change
    add_column :mainlines, :quantity, :integer
  end
end
