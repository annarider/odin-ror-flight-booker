class Flight < ApplicationRecord
  belongs_to :airport_from, class_name: 'Airport', foreign_key: 'airport_from_id'
  belongs_to :airport_to, class_name: 'Airport', foreign_key: 'airport_to_id'
end
