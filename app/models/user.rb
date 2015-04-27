class User < ActiveRecord::Base
	attr_accessible :username, :password, :password_confirmation

	has_secure_password

	validates :username, presense: true, uniqueness: { case_sensitive: false},
						 length: { in: 4..12},
						 format: { with: /^[a-z] [a-z0-9]*/}, message: 'can only contain lowercase letters and numbers'}
	validates :password, length: { in: 4..8}
	validates :password_confirmation, length: { in: 4..8}
end
