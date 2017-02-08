class CommentsController < ApplicationController
	def create
 
	    Comment.create(:email, :first_name, :last_name, :post, :post_id)

		redirect_to post
	end

	private
		def comment_params
			params.require(:comment).permit(:email, :first_name, :last_name, :post, :post_id)
		end
end
