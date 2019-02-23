class Resident < ApplicationRecord
  has_many :maintenance_requests

  validates_presence_of :first_name, :last_name, :address, :email

  def full_name
    [first_name, last_name].join(" ")
  end
end
