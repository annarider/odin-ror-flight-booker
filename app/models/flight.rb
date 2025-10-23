class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'

  validates :start, :duration, presence: true
  validate :departure_airport_not_equal_arrival_airport

  private

  def departure_airport_not_equal_arrival_airport
    if departure_airport_id == arrival_airport_id
      errors.add(:arrival_airport, "can't be the same as departure airport")
    end
  end
end
