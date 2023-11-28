class CreateGatepasses < ActiveRecord::Migration[7.0]
  def change
    create_table :gatepasses do |t|
      t.string :pass_number
      t.text :reason
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
