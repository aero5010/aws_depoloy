class PostController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    post = Post.new
    post.title = params[:title]
    post.author = params[:author]
    post.content = params[:content]
    post.save
    
    redirect_to '/post/index'
  end

  def show
    @post = Post.find(params[:post_id])
  end
end
