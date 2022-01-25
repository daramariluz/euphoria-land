class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user

  validates :user_id, presence: true, uniqueness: { scope: :vehicle_id }
  validates :date, :location, presence: true
end
