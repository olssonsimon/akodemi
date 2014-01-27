class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token

	# Validations
	validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true
	validates :password, length: { minimum: 6 }
	validates :password_confirmation, presence: true
	validates :bio, length: { maximum: 500 }

	validates :name, length: { maximum: 50 }

	# email format validation
	validates :email, email: true

	has_secure_password

	has_attached_file :avatar, style: { large: "120x120", medium: "48x48", thumbnail: "26x26" }
	has_attached_file :cv

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
			self.remember_token = User.encrypt(User.new_remember_token)
		end
end