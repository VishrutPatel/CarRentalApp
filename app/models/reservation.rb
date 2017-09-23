class Reservation < ApplicationRecord
  validates :Reservation_Id, uniqueness: true
  validates :Customer_Email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"only valid email-ID allowed"}, presence: true
  validates :Checkout_Date, presence: true
  validates :Checkout_Status, presence: true, inclusion: { in: %w(not_checked_out checked_out)}
  validates :Return_Date, presence:true
  validates :License_Tag, presence:true, length: { is: 7}
  validates :Drop_Off_Location, presence: true
  validates :Reservation_Status, presence:true, inclusion: { in: %w(checked_out returned) }
end
