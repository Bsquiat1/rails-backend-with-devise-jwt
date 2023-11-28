class CreateProformaInvoiceRows < ActiveRecord::Migration[7.0]
  def change
    create_table :proforma_invoice_rows do |t|
      t.string :description
      t.decimal :unit_price
      t.integer :quantity
      t.decimal :total
      t.references :proforma_invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
