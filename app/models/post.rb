class Post < ApplicationRecord

	has_many :comments
	def gravatar
  		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  	end
end