class CommentsController < ApplicationController

  def create
    post = Post.find(params[:comment][:post_id])
    post.comments.create(comment_params)
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :post)
  end

end
