class Vehicle < ApplicationRecord
 has_many :bookings
 has_many :users, through: :bookings

 validates :model, :color, presence: true
 validates :license, uniqueness: true
 validates :category, inclusion: { in: %w(scooter auto bicicleta),
    message: "%{value} is not a valid vehicle" }
end
