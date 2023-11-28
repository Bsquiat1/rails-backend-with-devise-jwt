class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :order, null: false, foreign_key: true
      t.string :invoice_number
      t.float :bill_amount
      t.float :amount_paid
      t.date :billing_date
      t.date :due_date

      t.timestamps
    end
  end
end
