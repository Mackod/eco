class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @posts = Post.all.first(5)
    @post  = Post.new
    @postupvote = PostUpvote.new
    @postdownvote = PostDownvote.new
    @comment = Comment.new
    @commentupvote = CommentUpvote.new
    @answer = Answer.new
    @answerupvote = AnswerUpvote.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    @post.save
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
