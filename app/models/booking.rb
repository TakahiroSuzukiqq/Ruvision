class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

   scope :is_approved, -> {where(approved: true, paid: false)}
   scope :paid, -> {where(paid: true)}
   scope :pending, -> {where(approved: false)}

end
