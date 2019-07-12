class Employee < ApplicationRecord
	has_many :timetrackings
	validates :name, presence: true,
					 length: { minimum: 4 },
					 uniqueness: {
					 	message: ->(object, data) do
					 		"Oh hey #{object.name}! We already contracted #{data[:value]} in our company, please choose a nickname or add your role to it! Example: A. Person (Driver)."
					 	end
					 }
	validates :contract_ID, presence: true,
							length: { minimum: 5, maximum: 12 },
							numericality: { only_integer: true },
							uniqueness: true
	validates :password, presence: true,
						 length: { minimum: 6 },
						 confirmation: true
	validates :profile_desc, length: { maximum: 2000 }
end
