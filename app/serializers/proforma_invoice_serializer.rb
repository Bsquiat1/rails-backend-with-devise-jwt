class ProformaInvoiceSerializer < ActiveModel::Serializer
  attributes :id, :customer_name,:customer_email, :customer_phone, :invoice_number, :date, :due_date, :subtotal, :tax, :total, :paid
  has_many :proforma_invoice_rows
end
