class AddEmailToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :email, :string
  end
end
