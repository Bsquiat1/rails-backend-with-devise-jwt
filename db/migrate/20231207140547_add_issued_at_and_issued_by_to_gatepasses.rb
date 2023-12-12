class AddIssuedAtAndIssuedByToGatepasses < ActiveRecord::Migration[7.0]
  def change
    add_column :gatepasses, :issued_at, :datetime
    add_column :gatepasses, :issued_by, :string
  end
end
