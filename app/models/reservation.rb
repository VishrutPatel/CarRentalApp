class Reservation < ApplicationRecord
  validates :Reservation_Id, uniqueness: true
  validates :Customer_Email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message:"only valid email-ID allowed"}, presence: true
  validates :Checkout_Date, presence: true
  validates :Checkout_Status, presence: true, inclusion: { in: %w(not_checked_out checked_out)}
  validates :Return_Date, presence:true
  validates :License_Tag, presence:true, length: { is: 7}
  validates :Drop_Off_Location, presence: true
  validates :Reservation_Status, presence:true, inclusion: { in: %w(reserved returned) }
  #validates :start_must_be_before_end_time
  #validates :max_9_hrs
  #private
  def max_9_hrs
    errors.add(:Checkout_Date, "must be less") unless
        Return_Date.to_time - Checkout_Date.to_time < 9.to_time
  end
  def start_must_be_before_end_time
    errors.add(:Checkout_Date, "must be before end time") unless
        Checkout_Date < Return_Date
  end
end
