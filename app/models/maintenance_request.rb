class MaintenanceRequest < ApplicationRecord
  belongs_to :request_category

  has_many :maintenance_request_notes

  validates_presence_of :message, :content
end
