class Package < ActiveRecord::Base
	belongs_to :city
	has_many :packages_departures
  has_many :departures, through: :packages_departures
end
