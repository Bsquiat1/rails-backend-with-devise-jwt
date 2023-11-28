class CreateLoadingDepots < ActiveRecord::Migration[7.0]
  def change
    create_table :loading_depots do |t|
      t.string :name
      t.string :location
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
