class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: 'departure_airport_id'
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: 'arrival_airport_id'

  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings

  validates :start, :duration, presence: true
  validate :departure_airport_not_equal_arrival_airport

  def self.available_dates
    select('DATE(start) as date')
      .distinct
      .order('DATE(start)')
      .pluck(Arel.sql'DATE(start)')
      .map(&:to_date)
  end

  def self.search(departure_airport_id, arrival_airport_id, date)
    where(departure_airport_id: departure_airport_id,
          arrival_airport_id: arrival_airport_id)
      .where('DATE(start) = ?', date)
  end

  private

  def departure_airport_not_equal_arrival_airport
    if departure_airport_id == arrival_airport_id
      errors.add(:arrival_airport, "can't be the same as departure airport")
    end
  end
end
