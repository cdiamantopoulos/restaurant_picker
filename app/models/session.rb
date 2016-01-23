class Session < ActiveRecord::Base
	belongs_to :user

	def self.create_token
		@token = SecureRandom.urlsafe_base64
	end

end
