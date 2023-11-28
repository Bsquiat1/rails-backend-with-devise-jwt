class CreateProformaInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :proforma_invoices do |t|
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.string :invoice_number
      t.date :date
      t.date :due_date
      t.decimal :subtotal
      t.decimal :tax
      t.decimal :total
      t.boolean :paid

      t.timestamps
    end
  end
end
