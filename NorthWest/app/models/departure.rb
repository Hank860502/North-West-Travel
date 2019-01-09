class Departure < ActiveRecord::Base
	has_many :packages_departures
  has_many :departures, through: :packages_departures
end
