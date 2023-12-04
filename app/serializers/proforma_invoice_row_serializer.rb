class ProformaInvoiceRowSerializer < ActiveModel::Serializer
  attributes :id, :description, :unit_price, :quantity, :total
  belongs_to :proforma_invoice
end
