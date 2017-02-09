class HomeController < ApplicationController
  def index
  	@posts =Post.order(created_at: :desc).all
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end
end
