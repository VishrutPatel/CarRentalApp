json.extract! reservation, :id, :Reservation_Id, :Customer_Email, :Checkout_Date, :Amount, :Checkout_Status, :Return_Date, :License_Tag, :Drop_Off_Location, :Reservation_Status, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
