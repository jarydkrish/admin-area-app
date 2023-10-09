class PostsController < ApplicationController
  # Show all posts
  def index
    @posts = Post.all
  end
  # Show a single post
  def show
    @post = Post.find(params[:id])
  end
end
