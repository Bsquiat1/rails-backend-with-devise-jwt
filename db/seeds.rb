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


mainline_diesel = Mainline.create(fuel_type: 'Diesel', quantity: 5000)
mainline_super = Mainline.create(fuel_type: 'Super', quantity: 2500)
mainline_kerosene = Mainline.create(fuel_type: 'Kerosene', quantity: 4000)


depots = [
  {
    name: 'VTTI',
    location: 'Mombasa',
    contact: 'vtti@example.com',
    products: {
      Diesel: 1000,
      Super: 0,
      Kerosene: 0,
    },
  },
  {
    name: 'GAPCO',
    location: 'Mombasa',
    contact: 'gapco@example.com',
    products: {
      Diesel: 1200,
      Super: 600,
      Kerosene: 900,
    },
  },
  {
    name: 'Oilcom',
    location: 'Nairobi',
    contact: 'oilcom@example.com',
    products: {
      Diesel: 800,
      Super: 400,
      Kerosene: 700,
    },
  },
  {
    name: 'Lake Oil',
    location: 'Nairobi',
    contact: 'lakeoil@example.com',
    products: {
      Diesel: 900,
      Super: 450,
      Kerosene: 750,
    },
  },
  {
    name: 'Konza',
    location: 'Konza',
    contact: 'konza@example.com',
    products: {
      Diesel: 600,
      Super: 300,
      Kerosene: 500,
    },
  },
]

depots.each do |depot_info|
  depot = LoadingDepot.create(name: depot_info[:name], location: depot_info[:location], contact: depot_info[:contact])
  mainline_fuel_types = depot_info[:products]
  
  mainline_fuel_types.each do |fuel_type, quantity|
    mainline = case fuel_type
               when 'Diesel'
                 mainline_diesel
               when 'Super'
                 mainline_super
               when 'Kerosene'
                 mainline_kerosene
               end
    Product.create(name: "#{fuel_type} Product", quantity: quantity, mainline: mainline, loading_depot: depot)
  end
end



puts "Seed data generated successfully!"
