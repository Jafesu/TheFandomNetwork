class Comment < ApplicationRecord
	belongs_to :post

	def gravatar
  		"http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  	end
end
