class Admin::MicropostsController < ApplicationController

  def index
    @microposts = Micropost.all
    @user = current_user
  end
  def edit
    @micropost = Micropost.find(params[:id])
  end
end
