class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
    @users = User.paginate(:page => params[:page], :per_page => 5)
  end

  def help
  end

  def create

  end

  def index
  end

end
