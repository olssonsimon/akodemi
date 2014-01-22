class User < ActiveRecord::Base
	# Validations
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true

	validates :name, length: { maximum: 50 }

	# email format validation
	validates :email, email: true
end
