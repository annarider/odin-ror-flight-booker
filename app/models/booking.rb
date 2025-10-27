class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :destroy

  validates :number_of_passengers, presence: true,
            numericality: { only_integer: true, greater_than: 0 }
end
