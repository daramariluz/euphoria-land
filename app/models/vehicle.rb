class Vehicle < ApplicationRecord
 has_many :bookings, dependent: :destroy
 has_many :users, through: :bookings

 validates :model, :color, presence: true
 validates :license, uniqueness: true

end
