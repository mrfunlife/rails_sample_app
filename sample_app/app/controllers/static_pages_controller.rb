class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
  end

  def help
  end

  def create

  end

  def index
  end

end
