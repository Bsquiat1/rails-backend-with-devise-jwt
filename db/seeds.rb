# db/seeds.rb

require 'faker'




# Seed users
# 5.times do
#   User.create(
#     email: Faker::Internet.email,
#     encrypted_password: Faker::Internet.password(min_length: 8),
#     name: Faker::Name.name,
#     role: 'admin'
#   )
# end

# Seed companies
# 10.times do
#   Company.create(
#     name: Faker::Company.name,
#     established_year: Faker::Number.between(from: 1900, to: 2023),
#     address: Faker::Address.full_address,
#     user_id: User.pluck(:id).sample,
#     email: Faker::Internet.email 
#   )
# end

# 10.times do
#   Customer.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     phone: Faker::PhoneNumber.phone_number,
#     category: ['local', 'export'].sample
#   )
  
# end

# # Seed loading depots
# 10.times do
#   LoadingDepot.create(
#     name: Faker::Company.name,
#     location: Faker::Address.full_address
#   )
# end

# # Seed orders
# 50.times do
#   Order.create(
#     customer_id: Customer.pluck(:id).sample,
#     loading_depot_id: LoadingDepot.pluck(:id).sample,
#     confirmed: [true, false].sample
#   )
# end

# 40.times do
#   invoice = Invoice.create(
#     order_id: rand(1..50),
#     invoice_number: Faker::Invoice.unique.reference,
#     bill_amount: Faker::Commerce.price(range: 50.0..500.0),
#     amount_paid: Faker::Commerce.price(range: 0.0..500.0),
#     billing_date: Faker::Date.backward(days: 30),
#     due_date: Faker::Date.forward(days: 30)
#   )
  
#   puts "Created invoice with ID #{invoice.id}"
# end



# 5.times do
#     proforma_invoice = ProformaInvoice.create(
#       customer_name: Faker::Name.name,
#       customer_email: Faker::Internet.email,
#       customer_phone: Faker::PhoneNumber.phone_number,
#       invoice_number: Faker::Invoice.reference,
#       date: Faker::Date.between(from: 1.year.ago, to: Date.today),
#       due_date: Faker::Date.between(from: Date.today, to: 1.year.from_now),
#       subtotal: Faker::Number.decimal(l_digits: 2),
#       tax: Faker::Number.decimal(l_digits: 2),
#       total: Faker::Number.decimal(l_digits: 2)
#     )
  
#     rand(2..5).times do
#       proforma_invoice.proforma_invoice_rows.create(
#         description: Faker::Commerce.product_name,
#         unit_price: Faker::Commerce.price(range: 0..100.0, as_string: true).to_d,
#         quantity: Faker::Number.between(from: 1, to: 20),
#         total: Faker::Commerce.price(range: 0..2000.0, as_string: true).to_d
#       )
#     end
#   end
  

# 10.times do
#     ProformaInvoiceRow.create(
#       description: Faker::Commerce.product_name,
#       unit_price: Faker::Commerce.price(range: 1000..10000.0, as_string: true).to_d,
#       quantity: Faker::Number.between(from: 1, to: 200),
#       total: Faker::Commerce.price(range: 0..200000.0, as_string: true).to_d,
#       proforma_invoice_id: Faker::Number.between(from: 1, to: 20)
#     )
#   end










# # Create mainlines
# Mainline.create([
#   { fuel_type: 'Diesel', quantity: 5000 },
#   { fuel_type: 'Super', quantity: 2500 },
#   { fuel_type: 'Kerosene', quantity: 4000 }
# ])

# Create loading depots
# LoadingDepot.create([
#   { name: 'VTTI', location: 'Mombasa',  contact: 'vtti@example.com'},
#   { name: 'GAPCO', location: 'Mombasa', contact: 'gapco@example.com'},
#   { name: 'Oilcom', location: 'Nairobi', contact: 'oilcom@example.com' },
#   { name: 'Lake Oil', location: 'Nairobi',  contact: 'lakeoil@example.com'},
#   { name: 'Konza', location: 'Konza', contact: 'konza@example.com'}
# ])

# # Create products for each loading depot
# Product.create([
#   { name: 'Diesel', quantity: 1000, loading_depot_id: 1 },
#   { name: 'Super', quantity: 0, loading_depot_id: 1 },
#   { name: 'Kerosene', quantity: 0, loading_depot_id: 1 },
#   { name: 'Diesel', quantity: 1200, loading_depot_id: 2 },
#   { name: 'Super', quantity: 600, loading_depot_id: 2 },
#   { name: 'Kerosene', quantity: 900, loading_depot_id: 2 },
#   { name: 'Diesel', quantity: 800, loading_depot_id: 3 },
#   { name: 'Super', quantity: 400, loading_depot_id: 3 },
#   { name: 'Kerosene', quantity: 700, loading_depot_id: 3 },
#   { name: 'Diesel', quantity: 900, loading_depot_id: 4 },
#   { name: 'Super', quantity: 450, loading_depot_id: 4 },
#   { name: 'Kerosene', quantity: 750, loading_depot_id: 4 },
#   { name: 'Diesel', quantity: 600, loading_depot_id: 5 },
#   { name: 'Super', quantity: 300, loading_depot_id: 5 },
#   { name: 'Kerosene', quantity: 500, loading_depot_id: 5 }
# ])

