class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :city
  has_many :reservations
  validates :description, length: { minimum: 140 }

  validates :available_beds, numericality: { greater_than: 0 }
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { minimum: 140 }
  validates :welcome_message, presence: true

  def overlapping_reservation?(start_date, end_date)
    reservations.each do |reservation|
      if (start_date < reservation.end_date && end_date > reservation.start_date)
        return true
      end
    end
    false
  end
end
