class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings  
  
  validates :full_name, :address, :phone_number, presence: true
  validates :email, presence: true, format: { with: /\A.*@.*\.com\z/ }
end
