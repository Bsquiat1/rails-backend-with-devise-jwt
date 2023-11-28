class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :loading_depot, null: false, foreign_key: true
      t.boolean :confirmed

      t.timestamps
    end
  end
end
