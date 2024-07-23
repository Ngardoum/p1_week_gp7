class User < ApplicationRecord
  has_many :listings
  has_many :reservations
  validates :email, presence: true
  validates :phone_number, presence: true
  validates :description, presence: true
end
