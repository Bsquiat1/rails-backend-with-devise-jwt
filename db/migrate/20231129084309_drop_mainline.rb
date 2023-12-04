class DropMainline < ActiveRecord::Migration[7.0]
  def change
    drop_table :mainlines
  end
end
