class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :fishes
  has_many :booked_fishes, through: :bookings, source: :fishes
  has_many :bookings
  has_many :received_bookings, through: :fishes, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
