class HomeController < ApplicationController
  def index
  	@posts =Post.order(created_at: :desc).all
  	@thisuser = User.find_by_email!(params[:email])
  end

  def new
  	@user = User.new
  end
end
