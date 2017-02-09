class User < ApplicationRecord
	has_attached_file :avatar, styles:{large: "600x600>", medium: "300x300>", thumb: "80x80#"}, default_url: "/images/images.jpg"
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	has_secure_password

end
