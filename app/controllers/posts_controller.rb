class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post  = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
  end

  private

  def post_params
    params.require(:post).permit(:name, :content)
  end
end
