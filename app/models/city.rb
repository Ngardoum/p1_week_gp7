class City < ApplicationRecord
  has_many :listings
  validates :name, presence: true
  validates :zip_code, presence: true
end
