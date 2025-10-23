class Flight < ApplicationRecord
  belongs_to :airport_from
  belongs_to :airport_to
end
