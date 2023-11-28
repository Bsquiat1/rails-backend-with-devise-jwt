class Invoice < ApplicationRecord
  belongs_to :order
  has_many :payments

  validates :order_id, presence: true
  validates :invoice_number, presence: true
  validates :bill_amount, presence: true
  validates :amount_paid, presence: true
  validates :billing_date, presence: true
  validates :due_date, presence: true

end
