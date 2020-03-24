class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    if params[:query].present?
      @posts = Post.search_by_title_and_content(params[:query])
    else
      @posts = Post.all.first(5)
    end
    @post  = Post.new
    @postupvote = PostUpvote.new
    @postdownvote = PostDownvote.new
    @comment = Comment.new
    @commentupvote = CommentUpvote.new
    @commentdownvote = CommentDownvote.new
    @answer = Answer.new
    @answerupvote = AnswerUpvote.new
    @answerdownvote = AnswerDownvote.new
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
