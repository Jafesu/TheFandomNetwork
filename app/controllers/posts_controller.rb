class PostsController < ApplicationController

	def create
		Post.create(post_params)

		redirect_to root_path
	end

	def show
		@post = Post.find(params[:id])
	end

	private
		def post_params
			params.require(:post).permit(:email, :first_name, :last_name, :post, :user_id, :image)
		end

end
