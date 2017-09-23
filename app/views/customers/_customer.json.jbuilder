json.extract! customer, :id, :Username, :Email, :No_Of_Cars_Rented, :Password, :Rental_Charge, :created_at, :updated_at
json.url customer_url(customer, format: :json)
