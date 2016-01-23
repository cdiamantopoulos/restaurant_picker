class User < ActiveRecord::Base

	##
	## Database relationships
	##
	has_many :sessions

	##
	## Validations
	##
	validates_uniqueness_of :email, presence: true
	validates :password, presence: true
	validates_confirmation_of :password


	def self.authenticate(email,password)
		user = User.where(email: email).first
		if user && user.password == password
			user
		elsif user && user.password != password
			:invalid_password
		else
			:invalid_email
		end
	end
	
end
