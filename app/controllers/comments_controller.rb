class CommentsController < ApplicationController
	def create
		Comment.create(comment_params)
	end

	private

	def comment_params
		params.require(:comment).permit(:email, :first_name, :last_name, :post, :post_id)
