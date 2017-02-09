class HomeController < ApplicationController
  def index
  	@posts =Post.order(created_at: :desc).all
  	
  end

  def new
  	@user = User.new
  end
end
