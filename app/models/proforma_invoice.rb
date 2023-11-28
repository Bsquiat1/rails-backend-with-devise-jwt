class ProformaInvoice < ApplicationRecord
   
        has_many :proforma_invoice_rows, dependent: :destroy

        accepts_nested_attributes_for :proforma_invoice_rows, allow_destroy: true


      
      
        validates :customer_name, presence: true
        validates :invoice_number, presence: true
        validates :date, presence: true
        validates :due_date, presence: true
        validates :subtotal, numericality: { greater_than_or_equal_to: 0 }
        validates :tax, numericality: { greater_than_or_equal_to: 0 }
        validates :total, numericality: { greater_than_or_equal_to: 0 }
      
      
end
