class PostsController < ApplicationController
  def index 
    @posts = Post.all.order(id: :desc)
  end  

  
  def create
    Post.create(content: params[:content])
    redirect_to root_path
  end  
end
