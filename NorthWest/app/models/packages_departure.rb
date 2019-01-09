class PackagesDeparture < ActiveRecord::Base
	belongs_to :package
  belongs_to :departure
end
