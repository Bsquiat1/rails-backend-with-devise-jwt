class CreateMainlines < ActiveRecord::Migration[7.0]
  def change
    create_table :mainlines do |t|
      t.string :name
      t.string :fuel_type
      t.references :loading_depot, null: false, foreign_key: true

      t.timestamps
    end
  end
end
