class Geofence < ApplicationRecord
	validates :latitude, presence: true,
						 numericality: { only_float: true }
	validates :longitude, presence: true,
						 numericality: { only_float: true }
	validates :radius, presence: true,
						 numericality: { only_float: true }
end
