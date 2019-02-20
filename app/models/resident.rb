class Resident < ApplicationRecord
  has_many :maintenance_requests
end
