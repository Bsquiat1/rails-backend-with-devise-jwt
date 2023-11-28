class SupplierInvoice < ApplicationRecord
    belongs_to :supplier

    validates :name, presence: true
end
