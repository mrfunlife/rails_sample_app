class StaticPagesController < ApplicationController
  def home
    @users = User.paginate(page: params[:page], per_page: 5)
    @microposts = Micropost.all
    @user = current_user
  end

  def help
  end

  def create

  end

  def index
  end

end
