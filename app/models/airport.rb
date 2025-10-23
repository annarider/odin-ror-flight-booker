class Airport < ApplicationRecord
  validates :code, presence: true, uniqueness: true, length: { is: 3 }

  has_many :flights_from, class_name: 'Flight', foreign_key: 'airport_from_id'
  has_many :flights_to, class_name: 'Flight', foreign_key: 'airport_to_id'
end
