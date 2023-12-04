class CreateMainline < ActiveRecord::Migration[7.0]
  def change
    create_table :mainlines do |t|
      t.string :fuel_type
      t.integer :quantity

      t.timestamps
    end
  end
end
