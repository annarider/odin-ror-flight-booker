class Flight < ApplicationRecord
  belongs_to :airport_from, class_name: 'Airport', foreign_key: 'airport_from_id'
  belongs_to :airport_to, class_name: 'Airport', foreign_key: 'airport_to_id'

  validates :start, :duration, presence: true
  validate :airport_from_not_equal_airport_to

  private

  def airport_from_not_equal_airport_to
    if airport_from_id == airport_to_id
      errors.add(:airport_to, "can't be the same as departure airport")
    end
  end
end
