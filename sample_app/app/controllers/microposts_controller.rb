class MicropostsController < ApplicationController

  def new
    @micropost = Micropost.new
  end
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to @micropost
    else
      render 'new'
    end
  end

  def destroy
  end

  def show
    @micropost = Micropost.find(params[:id])
  end

  private

  def micropost_params
    params.require(:micropost).permit(:title,:body,:urlImage)
  end
end
