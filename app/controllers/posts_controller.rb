class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @posts = Post.new
  end

  def show
    @posts = Post.params[:id]
  end

  def edit
  end

  def destroy
  end

end
