class Timetracking < ApplicationRecord
  	belongs_to :employee
	validates :latitude, presence: true,
						 numericality: { only_float: true }
	validates :longitude, presence: true,
						  numericality: { only_float: true }
	validates :active, presence: true,
					   inclusion: { in: [ true, false ] }
	validates :clock_in, presence: true
	validates :clock_out, presence: true
	validates :comment, presence: true,
						length: { maximum: 2000 }
end
