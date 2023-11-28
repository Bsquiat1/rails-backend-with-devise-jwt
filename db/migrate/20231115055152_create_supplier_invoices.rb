class CreateSupplierInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_invoices do |t|
      t.string :invoice_number
      t.date :date
      t.date :due_date
      t.text :description
      t.decimal :unit_price
      t.integer :quantity
      t.decimal :total
      t.string :name

      t.timestamps
    end
  end
end
