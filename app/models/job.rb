class Job < ActiveRecord::Base
	# Allow use of attribute name type in database
	self.inheritance_column = nil

	# Validations
	validates :title, presence: true
	validates :title, length: { minimum: 2 }

	validates :type, presence: true

	validates :city, presence: true
	validates :city, length: { minimum: 2 }

	validates :last_day, presence: true

	validates :description, presence: true
	validates :description, length: { maximum: 500 }
	validates :description, length: { minimum: 20 }

end
