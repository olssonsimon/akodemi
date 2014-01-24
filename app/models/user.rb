class User < ActiveRecord::Base
	# Validations
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :password, length: { minimum: 6 }

	validates :name, length: { maximum: 50 }

	# email format validation
	validates :email, email: true

	has_secure_password
end
