class City < ActiveRecord::Base
	belongs_to :country
	has_many :packages
	has_many :departures
end
