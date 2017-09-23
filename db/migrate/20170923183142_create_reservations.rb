class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.string :Reservation_Id
      t.string :Customer_Email
      t.datetime :Checkout_Date
      t.float :Amount
      t.string :Checkout_Status
      t.datetime :Return_Date
      t.string :License_Tag
      t.string :Drop_Off_Location
      t.string :Reservation_Status

      t.timestamps
    end
  end
end
